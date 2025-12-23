--creaing user table:
CREATE TABLE user (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  pass_word VARCHAR(255) NOT NULL
) COMMENT = 'User table of the blog';

---------------------------------------------------------------

--creating article table:
CREATE TABLE article (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(150) NOT NULL,
  content TEXT NOT NULL,
  date_pub DATE,
  id_user INT NOT NULL,
  FOREIGN KEY (id_user) REFERENCES user(id)
) COMMENT = 'Article table of the blog';

-------------------------------------------------------------------

--creating comment table:
CREATE TABLE comment (
  id INT AUTO_INCREMENT PRIMARY KEY,
  content TEXT NOT NULL,
  author VARCHAR(100),
  comment_date DATE,
  id_article INT NOT NULL,
  FOREIGN KEY (id_article) REFERENCES article(id)
) COMMENT = 'Comment table of the blog';

-----------------------------------------------------------------
--adding index to the table:
ALTER TABLE utilisateur ADD INDEX (email);

