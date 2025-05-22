const mysql = require("mysql2");
const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "jesus",
    database: "clientes_db"
});
connection.connect(err => {   //db.connect
    if(err) throw err;
    console.log("Conectado a la base de datos de  MYSQL");
});
module.exports = connection;

