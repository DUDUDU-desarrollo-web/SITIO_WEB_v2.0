var express = require('express');
var router = express.Router();

/* GET home page (index.jade). */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'DUDUDU' });
});

/* GET quienes-somos page (quienes-somos.jade). */
router.get('/quienes-somos', function(req, res, next) {
  res.render('quienes-somos', { title: 'QUIENES SOMOS' });
});

/* GET servicios page (servicios.jade). */
router.get('/servicios', function(req, res, next) {
  res.render('servicios', { title: 'SERVICIOS' });
});

/* GET portafolio page (portafolio.jade). */
/*
router.get('/portafolio', function(req, res, next) {
  res.render('portafolio', { title: 'PORTAFOLIO' });
});
*/

/* GET blog page (blog.jade). */
router.get('/blog', function(req, res, next) {
  res.render('blog', { title: 'BLOG' });
});

module.exports = router;
