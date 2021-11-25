USE fwa;

create trigger tr_insercion_menu after insert on menu for each row
insert into bitacora (tabla, accion, usuario, fecha)
values('menu', concat('Se inserto un elemento', new.id_menu), user(), date(now()));

create trigger tr_update_menu after update on menu for each row
insert into bitacora (tabla, accion, usuario, fecha)
values('menu', concat('Se modifico un elemento', old.id_menu), user(), date(now()));

create trigger tr_delete_menu before delete on menu for each row
insert into bitacora (tabla, accion, usuario, fecha)
values('menu', concat('Se elimino un elemento', old.id_menu), user(), date(now()));




create trigger tr_insercion_sucursales after insert on sucursales for each row
insert into bitacora (tabla, accion, usuario, fecha)
values('menu', concat('Se inserto un elemento', new.id), user(), date(now()));

create trigger tr_update_sucursales after update on sucursales for each row
insert into bitacora (tabla, accion, usuario, fecha)
values('menu', concat('Se modifico un elemento', old.id), user(), date(now()));

create trigger tr_delete_sucursales before delete on sucursales for each row
insert into bitacora (tabla, accion, usuario, fecha)
values('menu', concat('Se elimino un elemento', old.id), user(), date(now()));


