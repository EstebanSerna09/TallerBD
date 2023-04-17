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

