var express = require('express');
var router = express.Router();
var pool = require("../module/mysql").pool;
var checkLogin = require("../module/common").checkLogin;
/* GET users listing. */
router.get('/', function (req, res, next) {
  res.send('respond with a resource');
});

router.post("/register", function (req, res, next) {
  var loginName = req.body.loginName;
  var password = req.body.password;
  var createTime = new Date();
  console.log(loginName)
  pool.query({
    sql: "select id from users where loginName = ?",
    values: [loginName]
  }, (err, results) => {
    if (err) {
      throw err;
      return;
    }
    if (results.length != 0) {
      res.send({
        code: 201,
        message: "用户名已存在"
      })
      return;
    }
    pool.query({
      sql: "insert into users(loginName,password,createTime) values(?,?,?)",
      values: [loginName, password, createTime]
    }, (err, result) => {
      if (err) {
        throw err;
      }
      res.send({
        code: 200,
        message: "注册成功"
      })
    })
  })

})
router.post("/login", function (req, res, next) {
  var loginName = req.body.loginName;
  var password = req.body.password;
  pool.query({
    sql: "select id,loginName,createTime,type from users where loginName = ? and password = ?",
    values: [loginName, password]
  }, (err, results) => {
    if (err) {
      throw err;
    }
    if (results.length == 0) {
      res.send({
        code: 201,
        message: "用户名或密码错误"
      })
      return;
    }
    res.cookie("user", JSON.stringify(results[0]), { maxAge: 1000 * 60 * 60 * 24, path: "/" })
    res.send({
      code: 200,
      message: "登录成功"
    })
  })
})

router.get("/getUsers", checkLogin, (req, res, next) => {
  pool.query({
    sql: "select * from users order by createTime desc",
  }, (err, results) => {
    if (err) {
      throw err;
      res.send({
        code: 201,
        message: '失败'
      })
      return;
    }
    res.send({
      code: 200,
      message: "成功",
      users: results
    })
  })
})
router.post("/deleteUser/:id", checkLogin, (req, res, next) => {
  var id = req.params.id - 0;
  pool.query({
    sql: "delete from users where id = ?",
    values: [id]
  }, (err, results) => {
    if (err) {
      throw err;
      res.send({
        code: 201,
        message: '失败'
      })
      return;
    }
    res.send({
      code: 200,
      message: "删除成功",
    })
  })
})
router.post("/editUser/:id", checkLogin, (req, res, next) => {
  var id = req.params.id - 0;
  var password = req.body.password;
  pool.query({
    sql: "update users set password = ? where id = ?",
    values: [password, id]
  }, (err, results) => {
    if (err) {
      throw err;
      res.send({
        code: 201,
        message: '失败'
      })
      return;
    }
    res.send({
      code: 200,
      message: "密码修改成功",
    })
  })
})

module.exports = router;
