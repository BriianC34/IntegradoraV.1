USE pegajosoDB;
-- CREATE TYPES OF FOOD TABLE
CREATE TABLE tipos_EN(
id_tipos INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
tipo VARCHAR(40) UNIQUE KEY NOT NULL
);
-- CREATE MENU TABLE
CREATE TABLE menu_EN(
id_menu INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
producto VARCHAR(40) UNIQUE KEY NOT NULL,
informacion VARCHAR(200) NOT NULL,
precio FLOAT NOT NULL,
tipo INT NOT NULL,
estatus TINYINT NOT NULL,
FOREIGN KEY (tipo) REFERENCES tipos_EN(id_tipos)
);


--  INSERTS DE LA TABLA TIPOS
INSERT INTO tipos_EN(tipo)
VALUES("Food");

INSERT INTO tipos_EN(tipo)
VALUES("Drinks");


-- INSERTS MENU TABLE
INSERT INTO menu_EN(producto, informacion, precio, tipo, estatus)
VALUES("Montado", "(Meat, ham, cheese, avocado, lettuce, tomato and dressings)",
60.00, 1, 1);

INSERT INTO menu_EN(producto, informacion, precio, tipo, estatus)
VALUES("Large montado", "(Meat, ham, cheese, avocado, lettuce, tomato and dressings)",
80.00, 1, 1);

INSERT INTO menu_EN(producto, informacion, precio, tipo, estatus)
VALUES("Simple torta", "(Meat, lettuce, tomato and dressings)",
45.00, 1, 1);

INSERT INTO menu_EN(producto, informacion, precio, tipo, estatus)
VALUES("Especial torta", "(Meat, ham, cheese, avocado, lettuce, tomato and dressings)",
60.00, 1, 1);

INSERT INTO menu_EN(producto, informacion, precio, tipo, estatus)
VALUES("Torta (La pegajosa)", "(Beef steak, burger, avocado, cheese, ham, lettuce, tomato and dressings)",
80.00, 1, 1);

INSERT INTO menu_EN(producto, informacion, precio, tipo, estatus)
VALUES("Simple hamburger", "(Meat, avocado, ham, dressing, cheese, lettuce and tomato.)",
40.00, 1, 1);

INSERT INTO menu_EN(producto, informacion, precio, tipo, estatus)
VALUES("Especial hamburguer", "(Meat, ham, cheese, avocado, lettuce, tomato and dressings)",
50.00, 1, 1);

INSERT INTO menu_EN(producto, informacion, precio, tipo, estatus)
VALUES("Double hamburger", "(two meats, avocado, two hams, dressings, cheese, lettuce and tomato)",
65.00, 1, 1);

INSERT INTO menu_EN(producto, informacion, precio, tipo, estatus)
VALUES("Flour tacos", "(Cilantro and tomato)",
50.00, 1, 1);

INSERT INTO menu_EN(producto, informacion, precio, tipo, estatus)
VALUES("Coca cola", "(600ml)",
18.00, 2, 1);

INSERT INTO menu_EN(producto, informacion, precio, tipo, estatus)
VALUES("Fanta Orange", "(600ml)",
18.00, 2, 1);

INSERT INTO menu_EN(producto, informacion, precio, tipo, estatus)
VALUES("Fanta strawberry", "(600ml)",
18.00, 2, 1);

INSERT INTO menu_EN(producto, informacion, precio, tipo, estatus)
VALUES("Fresca", "(600ml)",
18.00, 2, 1);

INSERT INTO menu_EN(producto, informacion, precio, tipo, estatus)
VALUES("Manzanita", "(600ml)",
18.00, 2, 1);

INSERT INTO menu_EN(producto, informacion, precio, tipo, estatus)
VALUES("Sprite", "(600ml)",
18.00, 2, 1);