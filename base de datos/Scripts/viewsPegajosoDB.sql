-- CREACIÓN VISTA PARA MOSTRAR LOS MONTADOS
CREATE VIEW montados_view AS SELECT producto,precio,informacion 
FROM menu WHERE id_menu=1 || id_menu=2 && estatus=1;

-- CREACIÓN VISTA PARA MOSTRAR LAS TORTAS
CREATE VIEW tortas_view AS 
SELECT producto,precio,informacion 
FROM menu WHERE id_menu=3 || id_menu=4 || id_menu=5 && estatus=1;

-- CREACIÓN VISTA PARA MOSTRAR LAS HAMBURGUESAS
CREATE VIEW hamburguesas_view AS 
SELECT producto,precio,informacion 
FROM menu WHERE id_menu=6 || id_menu=7 || id_menu=8 && estatus=1;

-- CREACIÓN VISTA PARA MOSTRAR LAS TACOS
CREATE VIEW tacos_view AS 
SELECT producto,precio,informacion 
FROM menu WHERE id_menu=9 && estatus=1;

-- CREACIÓN VISTA PARA MOSTRAR LAS BEBIDAS
CREATE VIEW bebidas_view AS 
SELECT producto,precio,informacion 
FROM menu WHERE id_menu=10 || id_menu=11 || id_menu=12 ||
			    id_menu=13 || id_menu=14 || id_menu=15 && estatus=1;

-- CREACIÓN VISTA PARA MOSTRAR PLATILLOS DE LA TABLA MENU
CREATE VIEW platillos_view AS
SELECT id_menu,producto,informacion,precio,estatus
FROM menu WHERE tipo=1 AND estatus=1;

-- CREACIÓN VISTA PARA MOSTRAR PLATILLOS DE LA TABLA MENU
CREATE VIEW refrescos_view AS
SELECT id_menu,producto,informacion,precio,estatus
FROM menu WHERE tipo=2 AND estatus=1;

-- CREACIÓN VISTA PARA MOSTRAR PLATILLOS / EDICIÓN DE LA TABLA MENU
CREATE VIEW platillos_view_edit AS
SELECT id_menu,producto,informacion,precio,estatus
FROM menu WHERE tipo=1;

-- CREACIÓN VISTA PARA MOSTRAR PLATILLOS / EDICIÓN DE LA TABLA MENU
CREATE VIEW refrescos_view_edit AS
SELECT id_menu,producto,informacion,precio,estatus
FROM menu WHERE tipo=2;

-- ----------------------------------------------------------------- --

-- CREATE VIEW MONTADOS
CREATE VIEW montados_view_EN AS SELECT producto,precio,informacion 
FROM menu_EN WHERE id_menu=1 || id_menu=2 && estatus=1;

-- CREATE VIEW TORTAS
CREATE VIEW tortas_view_EN AS 
SELECT producto,precio,informacion 
FROM menu_EN WHERE id_menu=3 || id_menu=4 || id_menu=5 && estatus=1;

-- CREATE  VIEW HAMBURGERS
CREATE VIEW hamburguesas_view_EN AS 
SELECT producto,precio,informacion 
FROM menu_EN WHERE id_menu=6 || id_menu=7 || id_menu=8 && estatus=1;

-- CREATE VIEW TACOS
CREATE VIEW tacos_view_EN AS 
SELECT producto,precio,informacion 
FROM menu_EN WHERE id_menu=9 && estatus=1;

-- CREATE VIEW FOR BEBIDAS
CREATE VIEW bebidas_view_EN AS 
SELECT producto,precio,informacion 
FROM menu_EN WHERE id_menu=10 || id_menu=11 || id_menu=12 ||
			    id_menu=13 || id_menu=14 || id_menu=15 && estatus=1;

-- CREATE VIEWS FOR DISHES
CREATE VIEW platillos_view_EN AS
SELECT id_menu,producto,informacion,precio,estatus
FROM menu_EN WHERE tipo=1 AND estatus=1;

-- CREATE VIEWS FOR DRINKS
CREATE VIEW refrescos_view_EN AS
SELECT id_menu,producto,informacion,precio,estatus
FROM menu_EN WHERE tipo=2 AND estatus=1;

-- CREATE VIEWS DISHES / EDIT ON MENU TABLE
CREATE VIEW platillos_view_edit_EN AS
SELECT id_menu,producto,informacion,precio,estatus
FROM menu_EN WHERE tipo=1;

-- CREATE VIEWS DRINKS / EDIT ON MENU TABLE
CREATE VIEW refrescos_view_edit_EN AS
SELECT id_menu,producto,informacion,precio,estatus
FROM menu_EN WHERE tipo=2;