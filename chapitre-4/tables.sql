--CREATING USER TABLE:
CREATE TABLE Utilisateur (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE,
  mot_de_passe VARCHAR(255) NOT NULL
);

--CREATING ARTICLE TABLE:
CREATE TABLE Article (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titre VARCHAR(150) NOT NULL,
  contenu TEXT NOT NULL,
  date_pub DATE,
  id_utilisateur INT,
  FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur(id)
);

--CREATING COMMENT TABLE:

CREATE TABLE Commentaire (
  id INT AUTO_INCREMENT PRIMARY KEY,
  contenu TEXT NOT NULL,
  auteur VARCHAR(100),
  date_commentaire DATE,
  id_article INT,
  FOREIGN KEY (id_article) REFERENCES Article(id)
);
 
------------------------------------------------------------

-- show tables; => 3 tables:
-- Utilisateur
-- ARTICLE
-- Commentaire

-- DESCRIBE Utilisateur;
-- DESCRIBE Article;
-- DESCRIBE Commentaire;


--id	int	NO	PRI		auto_increment
--contenu	text	NO			
--auteur	varchar(100)	YES			
--date_commentaire	date	YES			
--id_article	int	YES	MUL		