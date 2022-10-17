var express = require('express');
var router = express.Router();
var db = require('../connection/connection-mysql');

/* GET portafolio page (portafolio.jade). */
router.get('/', function(req, res, next) {
    db.query("SELECT * FROM portafolio", function(err,datos){
        console.log(datos);
        res.render('portafolio', { title: 'PORTAFOLIO',trabajos: datos });
    });
  });

  module.exports = router;
