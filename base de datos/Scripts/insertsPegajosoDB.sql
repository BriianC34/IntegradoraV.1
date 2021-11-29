-- INSERTS DE LA TABLA TIPOS
INSERT INTO tipos(tipo)
VALUES("Comida");

INSERT INTO tipos(tipo)
VALUES("Bebida");
-- INSERTS DE LA TABLA MENU
INSERT INTO menu(producto, informacion, precio, tipo, estatus)
VALUES("Montado", "(Carne, Jamón, Queso, Aguacate, Lechuga, Tomate y Aderezos)",
60.00, 1, 1);

INSERT INTO menu(producto, informacion, precio, tipo, estatus)
VALUES("Montado gigante", "(Carne, Jamón, Queso, Aguacate, Lechuga, Tomate y Aderezos)",
80.00, 1, 1);

INSERT INTO menu(producto, informacion, precio, tipo, estatus)
VALUES("Torta sencilla", "(Carne, Lechuga, Tomate y Aderezos)",
45.00, 1, 1);

INSERT INTO menu(producto, informacion, precio, tipo, estatus)
VALUES("Torta especial", "(Carne, Jamón, Queso, Aguacate, Lechuga, Tomate y Aderezos)",
60.00, 1, 1);

INSERT INTO menu(producto, informacion, precio, tipo, estatus)
VALUES("Torta (La pegajosa)", "(Carne bistec, Carne de hamburguesa, Aguacate, Queso, Jamón, Lechuga, Tomate y Aderezos)",
80.00, 1, 1);

INSERT INTO menu(producto, informacion, precio, tipo, estatus)
VALUES("Hamburguesa sencilla", "(Carne, Aguacate, Jamón, Aderezos, Queso, Lechuga y Tomate)",
40.00, 1, 1);

INSERT INTO menu(producto, informacion, precio, tipo, estatus)
VALUES("Hamburguesa especial", "(Carne, Aguacate, Jamón, Aderezos, Queso, Lechuga y Tomate)",
50.00, 1, 1);

INSERT INTO menu(producto, informacion, precio, tipo, estatus)
VALUES("Hamburguesa doble", "(dos carnes, Aguacate, dos Jamones, Aderezos, Queso, Lechuga y Tomate)",
65.00, 1, 1);

INSERT INTO menu(producto, informacion, precio, tipo, estatus)
VALUES("Tacos de harina", "(Cilantro y Tomate)",
50.00, 1, 1);

INSERT INTO menu(producto, informacion, precio, tipo, estatus)
VALUES("Coca cola", "(600ml)",
18.00, 2, 1);

INSERT INTO menu(producto, informacion, precio, tipo, estatus)
VALUES("Fanta naranja", "(600ml)",
18.00, 2, 1);

INSERT INTO menu(producto, informacion, precio, tipo, estatus)
VALUES("Fanta fresa", "(600ml)",
18.00, 2, 1);

INSERT INTO menu(producto, informacion, precio, tipo, estatus)
VALUES("Fresca", "(600ml)",
18.00, 2, 1);

INSERT INTO menu(producto, informacion, precio, tipo, estatus)
VALUES("Manzanita", "(600ml)",
18.00, 2, 1);

INSERT INTO menu(producto, informacion, precio, tipo, estatus)
VALUES("Sprite", "(600ml)",
18.00, 2, 1);

-- INSERTS DE LA TABLA SUCURSALES
INSERT INTO sucursales(nombre,direccion,telefono,horario,estatus)
VALUES("Villa Juárez", "16 de Septiembre 18, Ejidal, 31065 Chihuahua, Chih.",
"6144561497","V,S,D 18:00 - 1:30",1);
-- INSERTS DE LA TABLA SUCURSALES MENÚ
INSERT INTO sucursales_menu(idmenu,idsucursales,estatus)
VALUES(1,1,1);

INSERT INTO sucursales_menu(idmenu,idsucursales,estatus)
VALUES(2,1,1);

INSERT INTO sucursales_menu(idmenu,idsucursales,estatus)
VALUES(3,1,1);

INSERT INTO sucursales_menu(idmenu,idsucursales,estatus)
VALUES(4,1,1);

INSERT INTO sucursales_menu(idmenu,idsucursales,estatus)
VALUES(5,1,1);

INSERT INTO sucursales_menu(idmenu,idsucursales,estatus)
VALUES(6,1,1);

INSERT INTO sucursales_menu(idmenu,idsucursales,estatus)
VALUES(7,1,1);

INSERT INTO sucursales_menu(idmenu,idsucursales,estatus)
VALUES(8,1,1);

INSERT INTO sucursales_menu(idmenu,idsucursales,estatus)
VALUES(9,1,1);

INSERT INTO sucursales_menu(idmenu,idsucursales,estatus)
VALUES(10,1,1);

INSERT INTO sucursales_menu(idmenu,idsucursales,estatus)
VALUES(11,1,1);

INSERT INTO sucursales_menu(idmenu,idsucursales,estatus)
VALUES(12,1,1);

INSERT INTO sucursales_menu(idmenu,idsucursales,estatus)
VALUES(13,1,1);

INSERT INTO sucursales_menu(idmenu,idsucursales,estatus)
VALUES(14,1,1);

INSERT INTO sucursales_menu(idmenu,idsucursales,estatus)
VALUES(15,1,1);