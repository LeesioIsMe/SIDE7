var express = require("express");
var router = express.Router();
var path = require("path");
var multer = require("multer");
var pool = require("../module/mysql").pool;
var checkLogin = require("../module/common").checkLogin;
var bigImg = "";

var upload = multer({
    storage: multer.diskStorage({
        destination: path.join(path.resolve(__dirname + "/../public/"), "/images/seed"),
        filename: function (req, file, callback) {
            var nameSpace = [".jpg", ".jepg", ".png", ".webp"];
            var originName = file.originalname;
            var extendName = originName.substr(originName.indexOf("."));
            if (nameSpace.indexOf(extendName) == -1) {
                return "图片格式错误"
            }
            var fileName = Date.now() + originName;
            bigImg = "/images/seed/" + fileName;
            callback(null, fileName)
        }
    })
})

router.post("/upload", upload.single("file"), (req, res, next) => {
    res.send({
        code: 200,
        message: "上传成功",
        bigImg
    })
})

router.post("/forsale", checkLogin, (req, res, next) => {
    var user = JSON.parse(req.cookies.user);
    var name = req.body.name;
    var bigImg = req.body.bigImg;
    var series = req.body.series;
    var color = req.body.color;
    var price = req.body.price;
    var count = req.body.count;
    var set = req.body.set;
    console.log(set)
    var type = req.body.type;
    var jixie = req.body.jixie;
    // 创建商品ID
    var id = "" + Date.now() + user.loginName;
    var createTime = new Date();
    if (!name || !bigImg || !series || !color || !price || !count || !set || !type || !jixie) {
        res.send({
            code: 201,
            message: "内容不完整"
        })
        return;
    }
    bigImg = bigImg.split(",")
    var img1 = bigImg[0] || "";
    var img2 = bigImg[1] || "";
    var img3 = bigImg[2] || "";
    var img4 = bigImg[3] || "";
    var img5 = bigImg[4] || "";
    pool.query({
        sql: "insert into products(id,name,bigImg,img1,img2,img3,img4,img5,seriesId,color,price,count,userId,createTime) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
        values: [id, name, bigImg[0], img1, img2, img3, img4, img5, series, color, price, count, user.id, createTime]
    }, (err, results) => {
        if (err) {
            throw err;
            res.send({
                code: 201,
                message: "失败"
            })
            return;
        }
        pool.query({
            sql: "insert into products_sets(id, productId, `set`, type, jixie, createTime) values(?,?,?,?,?,?)",
            values: ["sets" + id, id, set, type, jixie, createTime]
        }, (err, result) => {
            if (err) {
                throw err;
                res.send({
                    code: 201,
                    message: "失败"
                })
                return;
            }
            res.send({
                code: 200,
                message: "成功"
            })
        })
    })
})

router.get("/getProducts", (req, res, next) => {
    var pageSize = req.query.pageSize - 0;
    var pageNow = req.query.pageNow - 0;
    var type = req.query.type;
    var where = " ";
    var limit = " limit " + (pageNow - 1) * pageSize + "," + pageSize
    if (type) {
        where = " where s.`name` = '" + type + "'  and p.status = 1 ";
    }
    pool.query({
        sql: "select p.id,p.`name`,p.buyCount,p.bigImg,p.img1,p.img2,p.img3,p.img4,p.img5,p.seriesId,p.color,p.price,p.count,p.userId,p.createTime,ps.id psid,ps.`set`,ps.type pstype,ps.jixie,s.id sid,s.`name` sname,s.height,s.bili,s.`alter` from products_sets ps left join products p on ps.productId = p.id left join series s on s.id = p.seriesId " + where + " order by p.createTime desc " + limit
    }, (err, results) => {
        if (err) {
            throw err;
            res.send({
                code: 201,
                message: "失败"
            })
            return;
        }
        res.send({
            code: 200,
            message: "成功",
            products: results
        })
    })
})
router.get("/getOne/:id", (req, res, next) => {
    var id = req.params.id;
    pool.query({
        sql: "select p.id,p.`name`,p.buyCount,p.bigImg,p.img1,p.img2,p.img3,p.img4,p.img5,p.seriesId,p.color,p.price,p.count,p.userId,p.createTime,ps.id psid,ps.`set`,ps.type pstype,ps.jixie,s.id sid,s.`name` sname,s.height,s.bili,s.`alter` from products_sets ps left join products p on ps.productId = p.id left join series s on s.id = p.seriesId  where p.id = ? and p.status = 1",
        values: [id]
    }, (err, results) => {
        if (err) {
            throw err;
            res.send({
                code: 201,
                message: "失败"
            })
            return;
        }

        res.render("product", { p: results[0] });
    })
})
// 包含搜索
router.get("/getProductsList", (req, res, next) => {
    var seriesId = req.query.seriesId - 0 || "";
    var type = req.query.type || "";
    var orderBy = req.query.orderBy || "";
    var desc = req.query.desc || "";
    var keywords = req.query.keywords || "";
    var pageSize = req.query.pageSize;
    if (seriesId != "") {
        seriesId = " p.seriesId = " + seriesId;
    } else {
        seriesId = " 1 = 1 "
    }
    if (type != "") {
        type = " ps.type = '" + type + "' ";
    } else {
        type = " 1 = 1 "
    }
    if (orderBy != "") {
        if (desc == "true") {
            orderBy = " order by " + orderBy + " desc"
        } else {
            orderBy = " order by " + orderBy
        }
    } else {
        orderBy = " "
    }
    if (keywords != "") {
        keywords = " (ps.type like '%" + keywords + "%' or p.name like '%" + keywords + "%' or ps.jixie like '%" + keywords + "%') "
    } else {
        keywords = " 1 = 1 ";
    }

    if (pageSize != "") {
        pageSize = " limit 0," + pageSize;
    }
    var where = " where " + seriesId + " and " + type + " and " + keywords + " and p.status = 1 ";
    var limit = pageSize;
    console.log(where + orderBy)
    pool.query({
        sql: "select p.id,p.`name`,p.buyCount,p.bigImg,p.img1,p.img2,p.img3,p.img4,p.img5,p.seriesId,p.color,p.price,p.count,p.userId,p.createTime,ps.id psid,ps.`set`,ps.type pstype,ps.jixie,s.id sid,s.`name` sname,s.height,s.bili,s.`alter` from products_sets ps left join products p on ps.productId = p.id left join series s on s.id = p.seriesId " + where + orderBy + limit
    }, (err, results) => {
        if (err) {
            throw err;
            res.send({
                code: 201,
                message: "失败"
            })
            return;
        }
        res.send({
            code: 200,
            message: "成功",
            products: results
        })
    })
})

router.post("/editProduct", checkLogin, (req, res, next) => {
    var id = req.body.id;
    var price = req.body.price - 0;
    var set = "";
    if (!price) {
        set = " set status = 0 ";
    } else {
        set = " set price = " + price;
    }
    console.log(id)
    console.log(price)
    console.log(set)
    pool.query({
        sql: "update products " + set + " where id = ? ",
        values: [id]
    }, (err, results) => {
        if(err){
            throw err;
            res.send({
                code:201,
                message:"错误"
            })
            return;
        }
        res.send({
            code:200,
            message:'成功'
        })
    })
})

module.exports = router;