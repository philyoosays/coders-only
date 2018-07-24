-- schema

-- users
-- name, age, sex, what youre looking for, body type, height, avatar, email, password_digest
-- city, state, country, zip
-- interests, likes, dislikes, language, ethnicity
-- programming language, coding focus, tech stack, code snippet, github, portfolio
-- dating preferences
-- employment, wages, network
-- tag attrtibutes
-- roles
-- vote history (swipe left/right)
-- timestamp NOW
-- active (boolean)

DROP DATABASE coders_only;
CREATE DATABASE coders_only;

\c coders_only;

DROP TABLE IF EXISTS sex;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  fname TEXT,
  lname TEXT,
  age INTEGER,
  sex TEXT,
  email TEXT,
  city TEXT,
  state TEXT,
  zipcode TEXT,
  country TEXT,
  pass_digest TEXT,
  language TEXT,
  description TEXT,
  height TEXT,
  body_type TEXT,
  sexual_interest TEXT,
  employment TEXT,
  interests INTEGER REFERENCES interests(id),
  likes TEXT,
  dislikes TEXT,
  type_of_coder TEXT,
  tech_stack TEXT,
  code_snippet TEXT,
  tags TEXT,
  github TEXT,
  website TEXT,
  created TIMESTAMP DEFAULT NOW(),
  active BOOLEAN DEFAULT true
);

CREATE TABLE vote_history (
  id SERIAL PRIMARY KEY,
  voting_userid INTEGER REFERENCES users(id),
  userid INTEGER REFERENCES users(id),
  vote TEXT,
  created TIMESTAMP DEFAULT NOW()
);

CREATE TABLE interests (
  id SERIAL PRIMARY KEY,
  interest TEXT,
)

