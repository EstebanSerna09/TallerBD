CREATE TABLE autor (
  id_autor int(20) PRIMARY KEY,
  nombre varchar(20) DEFAULT NULL
);

CREATE TABLE libro (
  id_libro int(20) PRIMARY KEY,
  titulo varchar(20) DEFAULT NULL,
  editorial varchar(20) DEFAULT NULL,
  id_autor int(11) DEFAULT NULL,
  FOREIGN KEY (id_autor) REFERENCES autor (id_autor) ON DELETE CASCADE 
);

CREATE TABLE libro_prestamo (
  id_libro_prestamo int(20) PRIMARY KEY,
  id_prestamo int(11) DEFAULT NULL,
  id_libro int(11) DEFAULT NULL,
  FOREIGN KEY (id_libro) REFERENCES libro (id_libro) ON DELETE CASCADE 

);

CREATE TABLE multa (
  id_multa int(20) PRIMARY KEY,
  penalizacion int(20) DEFAULT NULL
);

CREATE TABLE prestamo (
  id_prestamo int(20) PRIMARY KEY,
  diashabiles int(20) DEFAULT NULL,
  id_multa int(11) DEFAULT NULL,
  FOREIGN KEY (id_multa) REFERENCES multa (id_multa) ON DELETE CASCADE 
);

CREATE TABLE usuario (
  id_usuario int(20) PRIMARY KEY,
  nombre_usuario varchar(20) DEFAULT NULL,
  edad int(3) DEFAULT NULL,
  numero_cont int(10) DEFAULT NULL,
  id_prestamo int(11) DEFAULT NULL,
  FOREIGN KEY (id_prestamo) REFERENCES prestamo (id_prestamo) ON DELETE CASCADE 
);

INSERT INTO autor (id_autor,nombre) VALUES
(0,"Gabriel García Márquez"),
(1,"J. R. R. Tolkien"),
(2,"George Orwell"),
(3,"Aldous Huxley"),
(4,"Jane Austen");

INSERT INTO libro (id_libro,titulo,editorial,id_autor) VALUES
(0,"Cien años de soledad","edit1",0),
(1,"El señor de los anillos","edit2",1),
(2,"1984","edit3",2),
(3,"Un mundo feliz","edit4",3),
(4,"Orgullo y prejuicio","edit5",4);

INSERT INTO multa (id_multa,penalizacion) VALUES
(0,10),
(1,15),
(2,20),
(3,13),
(4,18);

INSERT INTO prestamo (id_prestamo,diashabiles,id_multa) VALUES
(0,14,0),
(1,7,1),
(2,7,2),
(3,21,3),
(4,28,4);

INSERT INTO usuario (id_usuario,nombre_usuario,edad,numero_cont,id_prestamo) VALUES
(0,"Esteban",18,3017325752,0),
(1,"Juan",19,3017325752,1),
(2,"Kaleft",19,3017325752,2),
(3,"Angie",21,3017325752,3),
(4,"Cristian",20,3017325752,4);