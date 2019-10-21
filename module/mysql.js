
var mysql = require("mysql");
// 创建连接池资源
var pool = mysql.createPool({
    connectionLimit: 100,
    host: "localhost",
    user: "root",
    password: "171007liwu",
    database: "side7"
})

module.exports = {
    pool
}