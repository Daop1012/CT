create database peliculas_diego;
use peliculas_diego;

create table Categorias(
idCategoria int primary key auto_increment,
categoria_pelicula varchar(15) not null);

create table Generos(
idGenero int primary key auto_increment,
genero_pelicula varchar(20) not null);   

create table Tipos(
idTipo int primary key auto_increment,
tipo varchar(20) not null);

create table Actores(
idActor int primary key auto_increment,
nombres varchar(45) not null,
vivo boolean not null,
nacionalidad varchar(25) not null,
cedula varchar(16) not null,
fecha_nacimiento date not null);

create table Peliculas(
idPelicula int not null auto_increment,
nombres varchar(40) not null,
año year not null,
idCategoria int not null,
idGenero int not null,
idTipo int not null,
idActor int not null,
primary key (idPelicula),
foreign key (idCategoria) references Categorias (idCategoria),
foreign key (idGenero) references Generos (idGenero),
foreign key (idTipo) references Tipos (idTipo),
foreign key (idActor) references Actores (idActor));

create table Usuarios(
idUsuario int primary key auto_increment,
nombres varchar(45) not null,
vivo boolean not null,
nacionalidad varchar(25) not null,
cedula varchar(16) not null,
fecha_nacimiento date not null);

create table Valoraciones(
idValoracion int primary key auto_increment,
valoracion varchar(15) not null);

create table Peliculas_vistas(
idPelicula_vista int not null auto_increment,
comentario_pelicula varchar(200),
idPelicula int not null,
idUsuario int not null,
idValoracion int not null,
primary key (idPelicula_vista),
foreign key (idPelicula) references Peliculas (idPelicula),
foreign key (idUsuario) references Usuarios (idUsuario),
foreign key (idValoracion) references Valoraciones (idValoracion));
