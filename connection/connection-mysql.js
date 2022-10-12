const mysql = require('mysql');

const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "web_dududu"
});

connection.connect(
    (err)=>{
        if(!err){ console.log("Conexión exitosa :)");}
        else{ console.log("Conexión fallida :(");}
    }
);
module.exports = connection;