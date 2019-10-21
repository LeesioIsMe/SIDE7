var express = require("express");
var router = express.Router();
var pool = require("../module/mysql").pool;
var checkLogin = require("../module/common").checkLogin;
var getPages = require("../module/common").getPages;
router.post("/addShopCar", checkLogin, (req, res, next) => {
    var productId = req.body.id;
    var name = req.body.name;
    var price = req.body.price;
    var color = req.body.color;
    var buyCount = req.body.buyCount;
    var count = req.body.count;
    var userId = JSON.parse(req.cookies.user).id;
    console.log(productId)
    console.log(name)
    console.log(price)
    console.log(color)
    console.log(buyCount)
    console.log(count)
    var id = "" + Date.now() + productId + count + color + userId;
    var createTime = new Date();
    if (!productId || !name || !price || !color || !buyCount) {
        res.send({
            code: 201,
            message: "请选择要购买的配置"
        })
        return;
    }
    pool.query({
        sql: "select id from shop_car where productId = ? and color = ? and userId = ? and price = ?",
        values: [productId, color, userId, price]
    }, (err, result) => {
        if (err) {
            throw err;
            res.send({
                code: 201,
                message: "失败"
            })
            return;
        }
        if (result.length > 0) {
            pool.query({
                sql: "update shop_car set count = count + ? where id = ?",
                values: [buyCount, result[0].id]
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
                    message: "加入购物车成功"
                })
            })
        } else {
            pool.query({
                sql: "insert into shop_car (id,productId,name,price,color,count,userId,createTime) values(?,?,?,?,?,?,?,?)",
                values: [id, productId, name, price, color, buyCount, userId, createTime]
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
                    message: "加入购物车成功"
                })
            })
        }
    })
})

router.get("/getShopCar", (req, res, next) => {
    if (!req.cookies.user) {
        res.send({
            code: 202,
            message: "未登录"
        })
        return;
    }
    pool.query({
        sql: "select sp.id,sp.name,sp.price,sp.color,sp.count,sp.createTime,sp.userId,p.id productId,p.count pcount,p.bigImg,ps.set from shop_car sp left join products p on sp.productId = p.id left join products_sets ps on p.id = ps.productId where sp.userId = " + JSON.parse(req.cookies.user).id + " order by createTime desc",
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
            shopCar: results,
        })
    })
})

router.post("/editShopCar", checkLogin, (req, res, next) => {
    var id = req.body.id;
    var operate = req.body.operate;
    console.log(operate)
    console.log(id)
    if (operate == "-") {
        operate = " - 1 "
    }
    if (operate == "+") {
        operate = " + 1 "
    }
    pool.query({
        sql: "update shop_car set count = count " + operate + " where id = ?",
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
        res.send({
            code: 200,
            message: "成功",
        })
    })
})
router.post("/deleteShopCar", checkLogin, (req, res, next) => {
    var id = req.body.id;
    pool.query({
        sql: "delete from shop_car where id = ?",
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
        res.send({
            code: 200,
            message: "成功",
        })
    })
})
router.post("/deleteShopCarGroup", checkLogin, (req, res, next) => {
    var idGroup = req.body.idGroup.split(",").map((v, i) => {
        return "" + v
    });
    console.log(idGroup)
    pool.query({
        sql: "delete from shop_car where id in (?)",
        values: [idGroup]
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
        })
    })
})
module.exports = router;