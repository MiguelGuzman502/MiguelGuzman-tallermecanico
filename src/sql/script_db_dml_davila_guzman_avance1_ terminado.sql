 use mecanico_in4cm;

-- clientes
insert into clientes values 
(101, 'miguel guzman', 'zona 10, guatemala'), (102, 'ana lopez', 'antigua guatemala'),
(103, 'carlos paiz', 'quetzaltenango'), (104, 'lucia mendez', 'escuintla'),
(105, 'roberto sosa', 'amatitlan'), (106, 'elena rivas', 'zona 1, guatemala'),
(107, 'fernando monroy', 'mixco'), (108, 'gabriela cruz', 'villa nueva'),
(109, 'hugo torres', 'san miguel petapa'), (110, 'isabel diaz', 'coban'),
(111, 'jorge lorenzo', 'chiquimula'), (112, 'karla fuentes', 'zacapa'),
(113, 'luis guerra', 'jutiapa'), (114, 'mario estrada', 'retalhuleu'),
(115, 'norma pineda', 'mazatenango'), (116, 'oscar melgar', 'huehuetenango'),
(117, 'pablo reyes', 'san marcos'), (118, 'quique ramos', 'solola'),
(119, 'rosa flores', 'quiche'), (120, 'sergio mejia', 'izabal');

-- vehiculos
insert into vehiculos values 
('p101abc', 'toyota', '2022', 'rojo', 101), ('p102def', 'honda', '2021', 'azul', 102),
('p103ghi', 'mazda', '2023', 'gris', 103), ('p104jkl', 'ford', '2020', 'negro', 104),
('p105mno', 'hyundai', '2019', 'blanco', 105), ('p106pqr', 'kia', '2022', 'plata', 106),
('p107stu', 'nissan', '2018', 'verde', 107), ('p108vwx', 'chevrolet', '2021', 'amarillo', 108),
('p109yz1', 'mitsubishi', '2017', 'cafe', 109), ('p110abc', 'volkswagen', '2022', 'azul marino', 110),
('p111def', 'bmw', '2023', 'negro', 111), ('p112ghi', 'mercedes', '2021', 'gris metalico', 112),
('p113jkl', 'audi', '2020', 'blanco', 113), ('p114mno', 'jeep', '2019', 'naranja', 114),
('p115pqr', 'subaru', '2022', 'azul', 115), ('p116stu', 'suzuki', '2021', 'rojo', 116),
('p117vwx', 'renault', '2018', 'blanco', 117), ('p118yz1', 'peugeot', '2020', 'gris', 118),
('p119abc', 'fiat', '2019', 'negro', 119), ('p120def', 'volvo', '2023', 'plata', 120);

-- mecanicos
insert into mecanicos values 
(1, 'juan perez', 'master'), (2, 'pedro gomez', 'junior'),
(3, 'luis torres', 'senior'), (4, 'mario ruano', 'senior'),
(5, 'jorge diaz', 'master'), (6, 'raul santos', 'junior'),
(7, 'cesar oliva', 'senior'), (8, 'wilson herrera', 'master'),
(9, 'edgar tun', 'junior'), (10, 'sergio barrios', 'senior'),
(11, 'victor salas', 'master'), (12, 'gustavo lima', 'junior'),
(13, 'adrian sosa', 'senior'), (14, 'marcos cano', 'master'),
(15, 'felipe roca', 'junior'), (16, 'tomas lara', 'senior'),
(17, 'emilio paz', 'master'), (18, 'daniel solis', 'junior'),
(19, 'oscar tzul', 'senior'), (20, 'hector vela', 'master');

-- repuestos
insert into repuestos values 
('r001', 'filtro de aceite', 85.00), ('r002', 'pastillas de freno', 350.00),
('r003', 'bujias iridium', 120.00), ('r004', 'faja de tiempo', 450.00),
('r005', 'aceite sintetico', 380.00), ('r006', 'filtro de aire', 95.00),
('r007', 'bateria 12v', 850.00), ('r008', 'disco de freno', 600.00),
('r009', 'amortiguador delantero', 750.00), ('r010', 'liquido de frenos', 45.00),
('r011', 'refrigerante', 65.00), ('r012', 'bombilla led', 150.00),
('r013', 'sensor de oxigeno', 550.00), ('r014', 'terminal de direccion', 225.00),
('r015', 'rotula inferior', 180.00), ('r016', 'empaque de culata', 300.00),
('r017', 'radiador', 1200.00), ('r018', 'alternador', 1800.00),
('r019', 'clutch kit', 2500.00), ('r020', 'bomba de agua', 400.00);

-- ordenes_servicio
insert into ordenes_servicio (fecha_ingreso, diagnostico_inicial, presupuesto, placa_vehiculo) values
('2026-05-01', 'cambio de aceite', 465.00, 'p101abc'),
('2026-05-02', 'frenos ruidosos', 950.00, 'p102def'),
('2026-05-03', 'mantenimiento a/c', 300.00, 'p103ghi'),
('2026-05-04', 'revision electrica', 1000.00, 'p104jkl'),
('2026-05-05', 'cambio faja tiempo', 700.00, 'p105mno'),
('2026-05-05', 'alineacion y balanceo', 250.00, 'p106pqr'),
('2026-05-06', 'fuga de refrigerante', 465.00, 'p107stu'),
('2026-05-06', 'reparacion suspension', 1500.00, 'p108vwx'),
('2026-05-07', 'cambio de bujias', 600.00, 'p109yz1'),
('2026-05-07', 'reparacion alternador', 2000.00, 'p110abc'),
('2026-05-08', 'bateria descargada', 900.00, 'p111def'),
('2026-05-08', 'check engine encendido', 550.00, 'p112ghi'),
('2026-05-09', 'cambio de clutch', 3000.00, 'p113jkl'),
('2026-05-09', 'ruido en direccion', 400.00, 'p114mno'),
('2026-05-10', 'recalentamiento', 1600.00, 'p115pqr'),
('2026-05-10', 'servicio mayor', 1200.00, 'p116stu'),
('2026-05-11', 'frenos largos', 400.00, 'p117vwx'),
('2026-05-11', 'cambio luces led', 300.00, 'p118yz1'),
('2026-05-12', 'falla de arranque', 450.00, 'p119abc'),
('2026-05-12', 'limpieza inyectores', 350.00, 'p120def');


insert into detalle_mecanicos_orden (id_orden, numero_empleado, horas_dedicadas) values 
(1, 1, 2.5), (1, 3, 1.0),
(2, 2, 4.0), (3, 5, 2.0);

insert into detalle_repuestos_orden (id_orden, codigo_repuesto, cantidad) values 
(1, 'r001', 1), (1, 'r005', 4),
(2, 'r002', 2), (3, 'r011', 1);


call sp_insertar_cliente(121, 'estuardo argueta', 'zona 11, guatemala');
call sp_insertar_cliente(122, 'maria andree', 'mixco, guatemala');

call sp_actualizar_cliente(121, 'estuardo argueta modificado', 'zona 15, guatemala');

call sp_eliminar_cliente(122);

select * from vista_resumen_ordenes;