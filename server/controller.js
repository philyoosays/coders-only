require('dotenv').config();
const model = require('./models');
// const func = require('./utilities');

module.exports = {
  verifySite(req, res, next) {
    if(req.body.secret === process.env.HANDSHAKE) {
      console.log('authorized api hit')
      next()
    } else {
      console.log('not authorized')
      res.send('not authorized')
    }
  }
}
