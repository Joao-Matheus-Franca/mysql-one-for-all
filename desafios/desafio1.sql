DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;
  
  CREATE TABLE SpotifyClone.plans(
      id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      type VARCHAR(50) NOT NULL,
      value FLOAT NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.users(
      id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      name VARCHAR(100) NOT NULL,
      age VARCHAR(100) NOT NULL,
      plan_id INT NOT NULL,
      FOREIGN KEY (plan_id) REFERENCES plans (id)
  ) engine = InnoDB;

    CREATE TABLE SpotifyClone.artists(
      id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      name VARCHAR(100) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.albuns(
      id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      name VARCHAR(100) NOT NULL,
     artist_id INT NOT NULL,
      release_year INT NOT NULL,
	 FOREIGN KEY (artist_id) REFERENCES artists (id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.songs(
      id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      title VARCHAR(100) NOT NULL,
      length INT NOT NULL,
      album_id INT NOT NULL,
      FOREIGN KEY (album_id) REFERENCES albuns (id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.history(
      user_id INT NOT NULL,
      song_id INT NOT NULL,
      date DATETIME NOT NULL,
      CONSTRAINT PRIMARY KEY (user_id, song_id),
      FOREIGN KEY (user_id) REFERENCES users (id),
      FOREIGN KEY (song_id) REFERENCES songs (id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.follow(
      artist_id INT NOT NULL,
      user_id INT NOT NULL,
      CONSTRAINT PRIMARY KEY (user_id, artist_id),
      FOREIGN KEY (artist_id) REFERENCES artists (id),
      FOREIGN KEY (user_id) REFERENCES users (id)
  ) engine = InnoDB;
  
  INSERT INTO SpotifyClone.plans (type, value)
  VALUES
    ('gratuito', 0.00),
    ('familiar', 7.99),
    ('universitário', 5.99),
    ('pessoal', 6.99);

  INSERT INTO SpotifyClone.users (name, age, plan_id)
  VALUES
    ('Barbara Liskov', 82, 1),
    ('Robert Cecil Martin', 58, 1),
    ('Ada Lovelace', 37, 2),
    ('Martin Fowler', 46, 2),
    ('Sandi Metz', 58, 2),
    ('Paulo Freire', 19, 3),
    ('Bell Hooks', 26, 3),
    ('Christopher Alexander', 85, 4),
    ('Judith Butler', 45, 4),
    ('Jorge Amado', 58, 4);

  INSERT INTO SpotifyClone.artists (name)
  VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');

  INSERT INTO SpotifyClone.albuns (name, release_year, artist_id)
  VALUES
    ('Renaissance', 2022, 1),
    ('Jazz', 1978, 2),
    ('Hot Space', 1982, 2),
    ('Falso Brilhante', 1998, 3),
    ('Vento de Maio', 2001, 3),
    ('QVVJFA?', 2003, 4),
    ('Somewhere Far Beyond', 2007, 5),
    ('I Put A Spell On You', 2012, 6);

  INSERT INTO SpotifyClone.songs (title, length, album_id)
  VALUES
    ('BREAK MY SOUL', 279, 1),
    ('VIRGO’S GROOVE', 369, 1),
    ('ALIEN SUPERSTAR', 116, 1),
    ('Don’t Stop Me Now', 203, 2),
    ('Under Pressure', 152, 3),
    ('Como Nossos Pais', 105, 4),
    ('O Medo de Amar é o Medo de Ser Livre', 207, 5),
    ('Samba em Paris', 267, 6),
    ('The Bard’s Song', 244, 7),
    ('Feeling Good', 100, 8);


  INSERT INTO SpotifyClone.history (user_id, song_id, date)
  VALUES
    (1, 8, "2022-02-28 10:45:55"),
    (1, 2, "2020-05-02 05:30:35"),
    (1, 10, "2020-03-06 11:22:33"),

    (2, 10, "2022-08-05 08:05:17"), 
    (2, 7, "2020-01-02 07:40:33"),

    (3, 10, "2020-11-13 16:55:13"),
    (3, 2, "2020-12-05 18:38:30"),
    
    (4, 8, "2021-08-15 17:10:10"),
    
    (5, 8, "2022-01-09 01:44:33"),
    (5, 5, "2020-08-06 15:23:43"),
    
    (6, 7, "2017-01-24 00:31:17"), 
    (6, 1, "2017-10-12 12:35:20"),
    
    (7, 4, "2011-12-15 22:30:49"),

    (8, 4, "2012-03-17 14:56:41"),
    
    (9, 9, "2022-02-24 21:14:22"),
    
    (10, 3, "2015-12-13 08:30:22");
    
  INSERT INTO SpotifyClone.follow (user_id, artist_id)
  VALUES
    (1, 1),
    (1, 2),
    (1, 3),

    (2, 1),
    (2, 3),

    (3, 2),
    
    (4, 4),
    
    (5, 5),
    (5, 6),
    
    (6, 6),
    (6, 1),
    
    (7, 6),
    
    (9, 3),
    
    (10, 2);
  