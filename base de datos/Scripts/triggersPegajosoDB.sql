-- DISPARADOR PARA TABLA MENU CUANDO SE INSERTE UN PRODUCTO
CREATE TRIGGER tr_insert_menu AFTER INSERT ON menu
FOR EACH ROW
INSERT INTO bitacora (tabla, evento, usuario, fecha)
VALUES('menu', CONCAT('Un producto fue agregado', NEW.id_menu), USER(), DATE(NOW()));

-- DISPARADOR PARA TABLA MENU CUANDO ESTA SEA ACTUALIZADA
CREATE TRIGGER tr_update_menu AFTER UPDATE ON menu
FOR EACH ROW
INSERT INTO bitacora (tabla, evento, usuario, fecha)
VALUES('menu', CONCAT('Un producto fue modificado', OLD.id_menu), USER(), DATE(NOW()));

-- DISPARADOR PARA TABLA MENU CUANDO UN PRODUCTO SEA ELIMINADO
CREATE TRIGGER tr_delete_menu BEFORE DELETE ON menu
FOR EACH ROW
INSERT INTO bitacora (tabla, evento, usuario, fecha)
VALUES('menu', CONCAT('Un producto fue eliminado', OLD.id_menu), USER(), DATE(NOW()));

-- DISPARADOR PARA TABLA USUARIOS CUANDO SE INSERTE UN REGISTRO
CREATE TRIGGER tr_insert_usuarios AFTER INSERT ON usuarios
FOR EACH ROW
INSERT INTO bitacora (tabla, evento, usuario, fecha)
VALUES('usuarios', CONCAT('Un usuario fue agregado', NEW.id_usuarios), USER(), DATE(NOW()));

-- DISPARADOR PARA TABLA USUARIOS CUANDO ESTA SEA ACTUALIZADA
CREATE TRIGGER tr_update_usuarios AFTER UPDATE ON usuarios
FOR EACH ROW
INSERT INTO bitacora (tabla, evento, usuario, fecha)
VALUES('usuarios', CONCAT('Un usuario fue modificado', OLD.id_usuarios), USER(), DATE(NOW()));

-- DISPARADOR PARA TABLA USUARIOS CUANDO SE ELIMINE UN REGISTRO
CREATE TRIGGER tr_delete_usuarios BEFORE DELETE ON usuarios
FOR EACH ROW
INSERT INTO bitacora (tabla, evento, usuario, fecha)
VALUES('usuarios', CONCAT('Un usuario fue eliminado', OLD.id_usuarios), USER(), DATE(NOW()));


