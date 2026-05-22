-- drop database if exists mecanico_in4cm;
create database if not exists mecanico_in4cm;
use mecanico_in4cm;


create table clientes (
    id_cedula int primary key,
    nombre_cliente varchar(100) not null,
    direccion varchar(150) not null
);

create table vehiculos (
    placa varchar(10) primary key,
    marca varchar(50) not null,
    modelo varchar(50) not null,
    color varchar(30),
    id_cedula_dueno int not null,
    constraint fk_vehiculo_cliente 
        foreign key (id_cedula_dueno) references clientes (id_cedula)
        on delete cascade on update cascade
);

create table mecanicos (
    numero_empleado int primary key,
    nombre varchar(100) not null,
    nivel_tecnico varchar(50) not null
);

create table repuestos (
    codigo_repuesto varchar(20) primary key,
    nombre_repuesto varchar(100) not null,
    precio_unitario decimal(10, 2) not null
);

create table ordenes_servicio (
    id_orden int auto_increment primary key,
    fecha_ingreso date not null,
    diagnostico_inicial text,
    presupuesto decimal(10, 2),
    placa_vehiculo varchar(10) not null,
    constraint fk_orden_vehiculo 
        foreign key (placa_vehiculo) references vehiculos (placa)
        on delete cascade on update cascade
);

create table detalle_mecanicos_orden (
    id_detalle_mec int auto_increment primary key,
    id_orden int not null,
    numero_empleado int not null,
    horas_dedicadas decimal(5, 2) default 0,
    constraint fk_detalle_orden foreign key (id_orden) references ordenes_servicio(id_orden) on delete cascade,
    constraint fk_detalle_mecanico foreign key (numero_empleado) references mecanicos(numero_empleado) on delete cascade
);

create table detalle_repuestos_orden (
    id_detalle_rep int auto_increment primary key,
    id_orden int not null,
    codigo_repuesto varchar(20) not null,
    cantidad int not null,
    constraint fk_rep_orden foreign key (id_orden) references ordenes_servicio(id_orden) on delete cascade,
    constraint fk_rep_cod foreign key (codigo_repuesto) references repuestos(codigo_repuesto) on delete cascade
);

delimiter //


create procedure sp_insertar_cliente(
    in p_id_cedula int,
    in p_nombre varchar(100),
    in p_direccion varchar(150)
)
begin
    if not exists (select 1 from clientes where id_cedula = p_id_cedula) then
        insert into clientes(id_cedula, nombre_cliente, direccion)
        values (p_id_cedula, p_nombre, p_direccion);
    end if;
end //


create procedure sp_actualizar_cliente(
    in p_id_cedula int,
    in p_nombre varchar(100),
    in p_direccion varchar(150)
)
begin
    if exists (select 1 from clientes where id_cedula = p_id_cedula) then
        update clientes 
        set nombre_cliente = p_nombre, 
            direccion = p_direccion
        where id_cedula = p_id_cedula;
    end if;
end //


create procedure sp_eliminar_cliente(
    in p_id_cedula int
)
begin
    if exists (select 1 from clientes where id_cedula = p_id_cedula) then
        delete from clientes 
        where id_cedula = p_id_cedula;
    end if;
end //

delimiter ;

create view vista_resumen_ordenes as
select 
    o.id_orden,
    o.fecha_ingreso,
    v.placa,
    v.marca,
    c.nombre_cliente,
    o.presupuesto
from ordenes_servicio o
inner join vehiculos v on o.placa_vehiculo = v.placa
inner join clientes c on v.id_cedula_dueno = c.id_cedula;