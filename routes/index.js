// 导入包
var express = require('express');
var router = express.Router();
var checkLogin = require("../module/common").checkLogin;
// 使用连接池
var pool = require("../module/mysql").pool;
/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', { title: "SIDE7模型交易网" });
});

router.get("/getOrderCount", checkLogin, function (req, res, next) {
  var user = JSON.parse(req.cookies.user);
  var userId = user.id;
  pool.query({
    sql: "select count(id) count from shop_car where userId = ?",
    values: [userId]
  },(err,results)=>{
    if(err){
      throw err;
    }
    res.send({
      code:201,
      message:"成功",
      count:results[0].count
    })
  })
})
module.exports = router;
