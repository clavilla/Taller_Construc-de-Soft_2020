insert into Tipos_evento (`id`, `tipo`, `imagen`) values ('1','Conferencia','https://i.ibb.co/Wn3ZTCd/conferencia.png');
insert into Tipos_evento (`id`, `tipo`, `imagen`) values ('2','Curso','https://i.ibb.co/DQC88WK/curso.png');
insert into Tipos_evento (`id`, `tipo`, `imagen`) values ('3','Festejo','https://i.ibb.co/7YrvsFk/festejo.png');
insert into Tipos_evento (`id`, `tipo`, `imagen`) values ('4','Taller', 'https://i.ibb.co/FhNSmyN/taller.png');
insert into Tipos_evento (`id`, `tipo`, `imagen`) values ('5','Torneo','https://i.ibb.co/4P2ZT8M/torneo.png');
insert into Tipos_evento (`id`, `tipo`, `imagen`) values ('6','Otro','https://i.ibb.co/f0GC5BR/otro.png');
INSERT INTO `eventos` (`id`,`idType`, `name`, `description`, `duration`, `dayQuantity`,`startDate`, `endDate`, `time`) VALUES
(1, 'Curso', 'Curso de viajes en el tiempo', 'Viaja al fin de la pandemia de la mano del Doctor y su TARDIS', '2 horas', 14, '2020-11-30 09:00:00.000000', '2020-12-14 16:00:00.000000', '16:00:00.000000');
INSERT INTO `eventos` (`id`,`idType`, `name`, `description`, `duration`, `dayQuantity`,`startDate`, `endDate`, `time`) VALUES
(2,'Taller', 'Preparación de mate', 'Mejora tus habilidades mateadoras con nuestro taller teórico práctico. Primera edición: destapando bombillas', '2 horas', 14, '2020-11-30 09:00:00.000000', '2020-12-14 16:00:00.000000', '16:00:00.000000');
INSERT INTO `eventos` (`id`,`idType`, `name`, `description`, `duration`, `dayQuantity`,`startDate`, `endDate`, `time`) VALUES
(3, 'Festejo', 'IngeFest', 'La celebración más nerd del oeste', '2 horas', 14, '2020-11-30 09:00:00.000000', '2020-12-14 16:00:00.000000', '16:00:00.000000');
INSERT INTO `eventos` (`id`,`idType`, `name`, `description`, `duration`, `dayQuantity`,`startDate`, `endDate`, `time`) VALUES
(4, 'Torneo', 'Campeonato de dígalo con emojis', 'Sorprendenos con tu creatividad emojistica', '2 horas', 14, '2020-11-30 09:00:00.000000', '2020-12-14 16:00:00.000000', '16:00:00.000000');
INSERT INTO `eventos` (`id`,`idType`, `name`, `description`, `duration`, `dayQuantity`,`startDate`, `endDate`, `time`) VALUES
(6, 'Curso', 'Elaborando empasaurias', 'Aprende a preparar las más deliciosas empasaurias y deleita a tus comensales en estas fiestas.', '2 horas', 14, '2020-11-30 09:00:00.000000', '2020-12-14 16:00:00.000000', '16:00:00.000000');
INSERT INTO `eventos` (`id`,`idType`, `name`, `description`, `duration`, `dayQuantity`,`startDate`, `endDate`, `time`) VALUES
(7, 'Festejo', 'Fin de la pandemia', 'A mover la rótula y quemar barbijos con motivo del fin de la pandemia.
 Decile fuchi al covicho virulento!', '2 horas', 14, '2020-12-15 00:00:00', '2020-12-16 22:00:00.000000', '22:00:00.000000');
 INSERT INTO `eventos` (`id`,`idType`, `name`, `description`, `duration`, `dayQuantity`,`startDate`, `endDate`, `time`) VALUES
(8, 'Taller', 'Encontrando la media perdida', 'Aprende nuevas técnicas para encontrar esa media que siempre desaparece durante el ciclo de lavado', '2 horas', 14, '2020-11-30 09:00:00.000000', '2020-12-14 16:00:00.000000', '16:00:00.000000');
INSERT INTO `eventos` (`id`,`idType`, `name`, `description`, `duration`, `dayQuantity`,`startDate`, `endDate`, `time`) VALUES
(9, 'Torneo', 'Campeonato de jenga', 'Demuestra tus habilidades para ganar múltiples partidas de Jenga en nuestro patio de la perdición', '2 horas', 14, '2020-12-11 00:00:00', '2020-12-11 16:00:00.000000', '14:30:00.000000');
INSERT INTO `eventos` (`id`,`idType`, `name`, `description`, `duration`, `dayQuantity`,`startDate`, `endDate`, `time`) VALUES
(10, 'Conferencia', 'Cotización de la peperina en el mercado yuyístico', 'Debatiremos acerca de las recientes fluctuaciones en el precio de la peperina en el mercado yuyístico. ¿Cómo impacta la
demanda de te de burro?', '2 horas', 14, '2020-11-30 09:00:00.000000', '2020-12-14 16:00:00.000000', '16:00:00.000000');
INSERT INTO `springapp`.`usuarios` (`id`, `usuario`, `contrasenia`, `nombre`)VALUES (1,'user','pass','name');
