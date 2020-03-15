var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

/**
 * Challenge GET /users/cool/
 */
router.get('/cool/', function(req, res, next) {
  res.send('Public Library is so cool!');
});

module.exports = router;
