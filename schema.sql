DROP TABLE if EXISTS user_extension;
DROP TABLE if EXISTS comments;
DROP TABLE if EXISTS posts;
DROP TABLE if EXISTS users;




CREATE TABLE users (
  id serial primary key,
  handle varchar(255) UNIQUE
);

CREATE TABLE posts (
  id serial primary key,
  title varchar(255),
  user_id int references users(id),
  body text,
  creation_time timestamp
);

CREATE TABLE comments (
  id serial primary key,
  body text,
  user_id int references users(id),
  post_id int references posts(id),
  creation_time timestamp
);

CREATE TABLE user_extension (
  id int primary key references users(id),
  email varchar(255),
  password varchar(255)
);
