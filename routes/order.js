var express = require("express");
var router = express.Router();
var pool = require("../module/mysql").pool;
var checkLogin = require("../module/common").checkLogin;
var dateFormat = require("../module/common").dateFormat;
router.post("/addOrder", checkLogin, (req, res, next) => {
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
    var opId = "operate" + id
    var createTime = new Date();
    if (!productId || !name || !price || !color || !buyCount) {
        res.send({
            code: 201,
            message: "请选择要购买的配置"
        })
        return;
    }
    pool.query({
        sql: "insert into order_operate (id,count,totalPrice,createTime) values(?,?,?,?)",
        values: [opId, count, buyCount * price, createTime]
    }, (err, results2) => {
        if (err) {
            throw err;
            res.send({
                code: 201,
                message: "失败"
            })
            return;
        }
        pool.query({
            sql: "insert into orders (id,productId,name,price,color,truePay,count,opId,userId,createTime) values(?,?,?,?,?,?,?,?,?,?)",
            values: [id, productId, name, price, color, price * buyCount, buyCount, opId, userId, createTime]
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
                sql: "update products set count = count - ?,buyCount = buyCount + ? where id = ?",
                values: [buyCount,buyCount,productId]
            }, (err, results3) => {
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
                    message: "购买成功"
                })
            })
        })
    })

})
router.post("/addOrderGroup", checkLogin, (req, res, next) => {
    var order = JSON.parse(req.body.orderGroup);
    var userId = JSON.parse(req.cookies.user).id;
    // var product = [];
    // order.each(function (i, v) {
    //     product.push({
    //         productId: v.productId,
    //         price: v.price,
    //         count: v.count,
    //         name: v.name,
    //         color: v.color
    //     });
    // })
    // 随机创建id 当前时间戳+订单产品数量+随机数
    var valueOperateId = Date.now() + order.length + userId;
    var values = "";
    var createTime = new Date();
    var totalPrice = 0;
    if (!order || order.length == 0) {
        res.send({
            code: 201,
            message: "请选择商品后购买"
        })
        return;
    }
    order.forEach(function (v, i) {
        var id = "" + Date.now() + v.productId + v.count + v.color + userId;
        values += ` ('${id}','${v.productId}','${v.name}',${v.price},${v.color},${v.price * v.count},${v.count},'${valueOperateId}','${userId}',"${dateFormat(createTime, 'yyyy-MM-dd hh:mm:ss')}"),`
        totalPrice += v.price * v.count;
    })
    values = values.substr(0, values.length - 1) + ";";
    console.log(values)
    console.log(userId);
    pool.query({
        sql: "insert into order_operate (id,count,totalPrice,createTime) values(?,?,?,?)",
        values: [valueOperateId, order.length, totalPrice, createTime]
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
            sql: "insert into orders (id,productId,name,price,color,truePay,count,opId,userId,createTime) values " + values,
        }, (err, result2) => {
            if (err) {
                throw err;
                res.send({
                    code: 201,
                    message: "失败"
                })
                return;
            }
            for (var i = 0; i < order.length; i++) {
                var v = order[i];
                pool.query({
                    sql: `update products set count = count - ? where id = ?`,
                    values: [v.count, v.productId]
                }, (err, results3) => {
                    if (err) {
                        throw err;
                        res.send({
                            code: 201,
                            message: "失败"
                        })
                        return;
                    }
                })
            }
            res.send({
                code: 200,
                message: "购买成功"
            })
        })
    })
})

router.get("/getOrders", checkLogin, (req, res, next) => {
    var user = JSON.parse(req.cookies.user);
    pool.query({
        sql: "select o.id,o.productId,o.name,o.price,o.color ocolor,o.truePay,o.count ocount,o.opId,o.userId,op.createTime,op.count,op.totalPrice,p.id productId,p.`name` pname,p.bigImg,p.img1,p.img2,p.img3,p.img4,p.img5,p.seriesId,p.color,p.price pprice,p.count pcount,p.userId,p.createTime,ps.id psid,ps.`set`,ps.type pstype,ps.jixie,s.id sid,s.`name` sname,s.height,s.bili,s.`alter` from order_operate op left join orders o on o.opId = op.id left join products p on o.productId = p.id left join products_sets ps on p.id = ps.productId left join series s on p.seriesId = s.id where o.userId = ? and op.status = 1 order by op.createTime,o.createTime desc",
        values: [user.id]
    }, (err, results) => {
        if (err) {
            throw err;
            res.send({
                code: 201,
                message: "出错"
            })
            return;
        }
        res.send({
            code: 200,
            message: "成功",
            orders: results
        })
    })
})

router.post("/deleteOrder", checkLogin, (req, res, next) => {
    var id = req.body.id;
    pool.query({
        sql: "update order_operate set status = 0 where id = ?",
        values: [id]
    }, (err, results) => {
        if (err) {
            throw err;
            res.send({
                code: 201,
                message: "出错"
            })
            return;
        }
        res.send({
            code: 200,
            message: "成功"
        })
    })
})
module.exports = router;