-- maestros --
insert into empleado values(1,'maestro','carlos perez');
insert into empleado values(2,'maestro','emanuel gerardo');
insert into empleado values(3,'maestro','felipe hernandez');	

-- ayudantes --
insert into empleado values(4,'ayudante','juan esteban');
insert into empleado values(5,'ayudante','harvey dent');

-- cortadores --
insert into empleado values(6,'cortador','juan cerinza');
insert into empleado values(7,'cortador','patricia noriel');

-- diseño -- 
insert into lote values(1, '05/01/2022', '08/01/2022');
insert into suela values(1, 1);
insert into diseño values(1, 1, 1, 4, 10);

-- cambios -- 
update empleado set rol = 'maestro'
where id = 4;

--
alter table diseño 
add column id_material varchar(20);

insert into material values(1, 6, 1, 10);

update diseño set id_material = 1
where id_material is null ;

--
insert into trozos_materiales values(1,1);

--
update diseño set num_zapatos = 9
where id = 1;

--
delete from trozos_materiales 
where id_diseño = 1;
delete from diseño
where id = 1;

-- harvey haz lo tuyo - Insertar un nuevo accesorio en base de datos y luego insertar un diseño que use este accesorio


-- consultas -- 
insert into suela values(2,1);
insert into diseño values(2, 2, 2, 5, 10)
insert into diseño values(3, 1, 3, 5, 10)

insert into molde values(1, 1, 42, 'redonda');
insert into rango_talla values(1, 1);
insert into trozos_materiales values(1, 1);



-- 1.  Realizar una consulta que permita conocer en que zapatos fue usado determinado molde.

select rt.id_diseño as Zapato, id_molde as Molde_utilizado from rango_talla rt 

-- 2.  Realizar una consulta que permita conocer que lotes de material fueron usados en la construcción de un zapato.

select tm.id_diseño as Zapato,
tm.id_material as material_Usado,
m.id_lote as lote
from trozos_materiales tm 
right join material m on tm.id_material = m.id 


-- 3. Realizar un consulta que permita conocer cuanto zapatos se crearon para un diseño determinado

select d.id as Zapato, d.num_zapatos as Cantidad_creada from diseño d 

