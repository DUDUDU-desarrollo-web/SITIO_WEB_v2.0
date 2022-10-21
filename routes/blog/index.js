var express = require('express');
var router = express.Router();
var db = require('../../connection/connection-mysql');

/* GET blog page (blog.jade). */
router.get('/', function(req, res, next) {
  db.query("SELECT * FROM blog", function(err,datos){
    console.log(datos);
    res.render('blog/index', { title: 'BLOG',post: datos });
  });
});

/* GET 1er post (lo-primero-que-necesitas-para-tener-un-sitio-web.jade). */
router.get('/lo-primero-que-necesitas-para-tener-un-sitio-web', function(req, res, next) {
  db.query("SELECT * FROM blog", function(err,datos){
    res.render('blog/lo-primero-que-necesitas-para-tener-un-sitio-web', { title: 'Lo primero que necesitas para tener un sitio web',post: datos });
  });
});

//Platilla para los demás posts.
/* GET n post (titulo.jade). */
/*
router.get('/titulo-con-guiones', function(req, res, next) {
  db.query("SELECT * FROM blog", function(err,datos){
    console.log(datos);
    res.render('blog/titulo-con-guiones', { title: 'titulo de la pagina',post: datos });
  });
});
*/

module.exports = router;