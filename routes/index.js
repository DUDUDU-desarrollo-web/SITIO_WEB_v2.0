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

/* GET aviso-privacidad page (aviso-privacidad.jade). */
router.get('/aviso-privacidad', function(req, res, next) {
  res.render('aviso-privacidad', { title: 'Aviso de privacidad' });
});

module.exports = router;
