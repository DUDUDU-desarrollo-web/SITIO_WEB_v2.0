var express = require('express');
var router = express.Router();

/* GET blog page (blog.jade). */
router.get('/', function(req, res, next) {
    res.render('blog/index', { title: 'BLOG' });
  });

/* GET 1er post (lo-primero-que-necesitas-para-tener-un-sitio-web.jade). */
router.get('/lo-primero-que-necesitas-para-tener-un-sitio-web', function(req, res, next) {
  res.render('blog/lo-primero-que-necesitas-para-tener-un-sitio-web', { title: 'Lo-primero-que-necesitas-para-tener-un-sitio-web' });
});

module.exports = router;