const db = require('../db/dbConfig')

module.exports = {
  findOneUser(email) {
    return db.any(`
      SELECT * FROM users
      WHERE email = $1
    `, email);
  },

  addUser(data) {
    return db.none(`
      INSERT INTO users
        (fullname, email, birthday, email, profilepic, pass_digest)
      VALUES
        ($/fullName/, $/email/, $/birthday/, $/email/, $/profilePic/, $/pass_digest/)
    `, data);
  },
}
