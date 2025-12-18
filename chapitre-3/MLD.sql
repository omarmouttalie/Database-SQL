-- Table: User
CREATE TABLE User (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    mot_de_passe VARCHAR(100) NOT NULL
);

-- Table: Article
CREATE TABLE Article (
    id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    date_pub DATE NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(id)
);

-- Table: Comment
CREATE TABLE Comment (
    id INT PRIMARY KEY,
    content TEXT NOT NULL,
    author_id INT NOT NULL,
    article_id INT NOT NULL,
    date DATE NOT NULL,
    FOREIGN KEY (author_id) REFERENCES User(id),
    FOREIGN KEY (article_id) REFERENCES Article(id)
);
