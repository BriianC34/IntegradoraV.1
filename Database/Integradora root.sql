create database fwa;
use fwa;

create table tipos(
	id_tipos int primary key not null auto_increment,
    tipo varchar(25) not null);

create table Menu (
	id_menu int primary key not null auto_increment,
    nombre varchar(40) unique key not null,
    descripcion varchar(100) not null,
    precio double not null,
    tipo int not null,
    estatus boolean not null,
    foreign key (tipo) references tipos(id_tipos)
    );
        
	create table sucursales(id int not null primary key auto_increment,
		nombre varchar(45) not null unique key,
        direccion varchar(50) not null,
        numero_de_telefono double not null,
        horario varchar(20),
        estatus boolean);
        
	create table bitacora (
		id int not null primary key auto_increment,
		Tabla varchar(40) null,
		accion text null,
		usuario varchar(40),
		fecha date);
        
	create table sucursales_menu(
		id_sm int primary key auto_increment,
        idmenu int not null,
        idsucursales int not null,
        estatus boolean not null,
        foreign key (idsucursales) references sucursales(id),
        foreign key (idmenu) references menu(id_menu)
        );
        


        

        
    
    

    
