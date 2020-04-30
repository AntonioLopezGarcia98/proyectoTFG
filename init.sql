DROP DATABASE IF EXISTS cine;
CREATE DATABASE cine;
USE cine;

CREATE TABLE peliculas(
id		INT(50) NOT NULL,
nombre		VARCHAR(50) NOT NULL,
sinopsis	VARCHAR(500)NOT NULL,
duracion	VARCHAR(250)NOT NULL,
PRIMARY KEY(id));

CREATE TABLE salas(
id		INT(10) NOT NULL,
PRIMARY KEY (id));

CREATE TABLE asientos(
id		INT(250) NOT NULL,
fila		VARCHAR(250) NOT NULL,
asiento		VARCHAR(250) NOT NULL,
idSala		INT(10) NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(idSala) REFERENCES salas(id));

CREATE TABLE funciones(
id		INT(50) NOT NULL,
idPelicula	INT(50) NOT NULL,
idSala		INT(50) NOT NULL,
fecha		VARCHAR(50) NOT NULL,
hora		VARCHAR(50) NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(idPelicula) REFERENCES peliculas(id),
FOREIGN KEY(idSala) REFERENCES salas(id));

CREATE TABLE reservas(
idFuncion	INT(255) NOT NULL,
idAsiento	INT(255) NOT NULL,
reservado	INT(2));

CREATE TABLE entradas(
id		INT(255) primary key auto_increment NOT NULL ,
idFuncion	INT(255),
idAsiento	INT(255),
FOREIGN KEY(idFuncion) REFERENCES funciones(id),
FOREIGN KEY(idAsiento) REFERENCES asientos(id));



INSERT INTO peliculas VALUES(1,'Spider-Man: Homecoming','Peter Parker comienza su vida como superheroe y debera enfrentarse a los problemas de Nueva York','2h');
INSERT INTO peliculas VALUES(2,'Joker','Arthur es un hombre golpeado por la sociedad con problemas e ira transformandose en el villano de Gotham','2h 15min');
INSERT INTO peliculas VALUES(3,'1917','Historia que trata un suceso historico de la segunda guerra mundial, basado en hechos reales','2h 10min');
INSERT INTO peliculas VALUES(4,'Fast & Furious 9','Novena entrega de la mitica saga de coches donde Toretto debera enfrentarse a su hermano','2h');
INSERT INTO peliculas VALUES(5,'Sonic: La Pelicula','Pelicula del mitico erizo azul donde debera enfrentarse a su mayor rival el dr. Robotnik para volver a su mundo','1h 30min');
INSERT INTO peliculas VALUES(6,'The Batman','Adaptacion del superheroe de DC interpretado por Robbert Patison donde se veran los inicios del personaje','2h 15min');
INSERT INTO peliculas VALUES(7,'Moonlight','Historia dramatica en la que observamos la infancia, juventud y adultez de un muchacho que sufre los efectos de la sociedad','2h');
INSERT INTO peliculas VALUES(8,'Adu','Dos hermanos intentan llegar a Europa pasando por todas las dificultades cuya unica opcion pasa por un avion que sale de Camerun','1h 30min');
INSERT INTO peliculas VALUES(9,'Toy Story 4','Woody y sus amigos vuelven para su ultima aventura donde deberan integrar a un nuevo juguete hecho por su nuevo propietario','1h 40min');
INSERT INTO peliculas VALUES(10,'Star Wars Episodio IX','Ultima pelicula de la saga que comenzo en la decada de los 70, donde se decidira el destino de la galaxia','2h 20min');
INSERT INTO peliculas VALUES(11,'IT Capitulo 2','Segunda parte de la obra de Stephen King donde el club de los perdedores deberan enfrentarse al payaso Pennywise','2h 35min');
INSERT INTO peliculas VALUES(12,'John Wick 3: Parabellum','John debera enfrentarse a todos los asesinos del mundo tras romper la regla primordial de El Continental','2h 20min');
INSERT INTO peliculas VALUES(13,'Ad Astra','Brad Pitt interpreta a un ingeniero que perdio a su padre en un viaje al espacio y 2 decadas mas tarde debera llevar a cabo un viaje para recuperarle','2h');
INSERT INTO peliculas VALUES(14,'Ford vs Ferrari','Basada en hechos reales donde se ve como Ford intenta por primera vez plantar cara a Ferrari en Le Mans','2h 30min');
INSERT INTO peliculas VALUES(15,'El Irlandes','Un veterano de guerra recuerda su participacion en el asesinato de Jimmy Hoffa.','3h 30min');

INSERT INTO salas VALUES(1);
INSERT INTO salas VALUES(2);
INSERT INTO salas VALUES(3);
INSERT INTO salas VALUES(4);

INSERT INTO asientos VALUES(1,'A','1',1);
INSERT INTO asientos VALUES(2,'A','2',1);
INSERT INTO asientos VALUES(3,'A','3',1);
INSERT INTO asientos VALUES(4,'A','4',1);
INSERT INTO asientos VALUES(5,'A','5',1);
INSERT INTO asientos VALUES(6,'A','6',1);
INSERT INTO asientos VALUES(7,'B','1',1);
INSERT INTO asientos VALUES(8,'B','2',1);
INSERT INTO asientos VALUES(9,'B','3',1);
INSERT INTO asientos VALUES(10,'B','4',1);
INSERT INTO asientos VALUES(11,'B','5',1);
INSERT INTO asientos VALUES(12,'B','6',1);
INSERT INTO asientos VALUES(13,'C','1',1);
INSERT INTO asientos VALUES(14,'C','2',1);
INSERT INTO asientos VALUES(15,'C','3',1);
INSERT INTO asientos VALUES(16,'C','4',1);
INSERT INTO asientos VALUES(17,'C','5',1);
INSERT INTO asientos VALUES(18,'C','6',1);
INSERT INTO asientos VALUES(19,'D','1',1);
INSERT INTO asientos VALUES(20,'D','2',1);
INSERT INTO asientos VALUES(21,'D','3',1);
INSERT INTO asientos VALUES(22,'D','4',1);
INSERT INTO asientos VALUES(23,'D','5',1);
INSERT INTO asientos VALUES(24,'D','6',1);
INSERT INTO asientos VALUES(25,'E','1',1);
INSERT INTO asientos VALUES(26,'E','2',1);
INSERT INTO asientos VALUES(27,'E','3',1);
INSERT INTO asientos VALUES(28,'E','4',1);
INSERT INTO asientos VALUES(29,'E','5',1);
INSERT INTO asientos VALUES(30,'E','6',1);

INSERT INTO asientos VALUES(31,'A','1',2);
INSERT INTO asientos VALUES(32,'A','2',2);
INSERT INTO asientos VALUES(33,'A','3',2);
INSERT INTO asientos VALUES(34,'A','4',2);
INSERT INTO asientos VALUES(35,'A','5',2);
INSERT INTO asientos VALUES(36,'A','6',2);
INSERT INTO asientos VALUES(37,'B','1',2);
INSERT INTO asientos VALUES(38,'B','2',2);
INSERT INTO asientos VALUES(39,'B','3',2);
INSERT INTO asientos VALUES(40,'B','4',2);
INSERT INTO asientos VALUES(41,'B','5',2);
INSERT INTO asientos VALUES(42,'B','6',2);
INSERT INTO asientos VALUES(43,'C','1',2);
INSERT INTO asientos VALUES(44,'C','2',2);
INSERT INTO asientos VALUES(45,'C','3',2);
INSERT INTO asientos VALUES(46,'C','4',2);
INSERT INTO asientos VALUES(47,'C','5',2);
INSERT INTO asientos VALUES(48,'C','6',2);
INSERT INTO asientos VALUES(49,'D','1',2);
INSERT INTO asientos VALUES(50,'D','2',2);
INSERT INTO asientos VALUES(51,'D','3',2);
INSERT INTO asientos VALUES(52,'D','4',2);
INSERT INTO asientos VALUES(53,'D','5',2);
INSERT INTO asientos VALUES(54,'D','6',2);
INSERT INTO asientos VALUES(55,'E','1',2);
INSERT INTO asientos VALUES(56,'E','2',2);
INSERT INTO asientos VALUES(57,'E','3',2);
INSERT INTO asientos VALUES(58,'E','4',2);
INSERT INTO asientos VALUES(59,'E','5',2);
INSERT INTO asientos VALUES(60,'E','6',2);

INSERT INTO asientos VALUES(61,'A','1',3);
INSERT INTO asientos VALUES(62,'A','2',3);
INSERT INTO asientos VALUES(63,'A','3',3);
INSERT INTO asientos VALUES(64,'A','4',3);
INSERT INTO asientos VALUES(65,'A','5',3);
INSERT INTO asientos VALUES(66,'A','6',3);
INSERT INTO asientos VALUES(67,'B','1',3);
INSERT INTO asientos VALUES(68,'B','2',3);
INSERT INTO asientos VALUES(69,'B','3',3);
INSERT INTO asientos VALUES(70,'B','4',3);
INSERT INTO asientos VALUES(71,'B','5',3);
INSERT INTO asientos VALUES(72,'B','6',3);
INSERT INTO asientos VALUES(73,'C','1',3);
INSERT INTO asientos VALUES(74,'C','2',3);
INSERT INTO asientos VALUES(75,'C','3',3);
INSERT INTO asientos VALUES(76,'C','4',3);
INSERT INTO asientos VALUES(77,'C','5',3);
INSERT INTO asientos VALUES(78,'C','6',3);
INSERT INTO asientos VALUES(79,'D','1',3);
INSERT INTO asientos VALUES(80,'D','2',3);
INSERT INTO asientos VALUES(81,'D','3',3);
INSERT INTO asientos VALUES(82,'D','4',3);
INSERT INTO asientos VALUES(83,'D','5',3);
INSERT INTO asientos VALUES(84,'D','6',3);
INSERT INTO asientos VALUES(85,'E','1',3);
INSERT INTO asientos VALUES(86,'E','2',3);
INSERT INTO asientos VALUES(87,'E','3',3);
INSERT INTO asientos VALUES(88,'E','4',3);
INSERT INTO asientos VALUES(89,'E','5',3);
INSERT INTO asientos VALUES(90,'E','6',3);

INSERT INTO asientos VALUES(91,'A','1',4);
INSERT INTO asientos VALUES(92,'A','2',4);
INSERT INTO asientos VALUES(93,'A','3',4);
INSERT INTO asientos VALUES(94,'A','4',4);
INSERT INTO asientos VALUES(95,'A','5',4);
INSERT INTO asientos VALUES(96,'A','6',4);
INSERT INTO asientos VALUES(97,'B','1',4);
INSERT INTO asientos VALUES(98,'B','2',4);
INSERT INTO asientos VALUES(99,'B','3',4);
INSERT INTO asientos VALUES(100,'B','4',4);
INSERT INTO asientos VALUES(101,'B','5',4);
INSERT INTO asientos VALUES(102,'B','6',4);
INSERT INTO asientos VALUES(103,'C','1',4);
INSERT INTO asientos VALUES(104,'C','2',4);
INSERT INTO asientos VALUES(105,'C','3',4);
INSERT INTO asientos VALUES(106,'C','4',4);
INSERT INTO asientos VALUES(107,'C','5',4);
INSERT INTO asientos VALUES(108,'C','6',4);
INSERT INTO asientos VALUES(109,'D','1',4);
INSERT INTO asientos VALUES(110,'D','2',4);
INSERT INTO asientos VALUES(111,'D','3',4);
INSERT INTO asientos VALUES(112,'D','4',4);
INSERT INTO asientos VALUES(113,'D','5',4);
INSERT INTO asientos VALUES(114,'D','6',4);
INSERT INTO asientos VALUES(115,'E','1',4);
INSERT INTO asientos VALUES(116,'E','2',4);
INSERT INTO asientos VALUES(117,'E','3',4);
INSERT INTO asientos VALUES(118,'E','4',4);
INSERT INTO asientos VALUES(119,'E','5',4);
INSERT INTO asientos VALUES(120,'E','6',4);

INSERT INTO funciones VALUES(1,1,1,'6-3-2020','17:30');
INSERT INTO funciones VALUES(2,1,1,'6-3-2020','19:30');
INSERT INTO funciones VALUES(3,1,1,'9-3-2020','17:30');
INSERT INTO funciones VALUES(4,1,1,'9-3-2020','19:30');
INSERT INTO funciones VALUES(5,1,1,'10-3-2020','17:30');
INSERT INTO funciones VALUES(6,1,1,'10-3-2020','19:30');
INSERT INTO funciones VALUES(7,1,1,'11-3-2020','17:30');
INSERT INTO funciones VALUES(8,1,1,'11-3-2020','19:30');
INSERT INTO funciones VALUES(9,1,1,'12-3-2020','17:30');
INSERT INTO funciones VALUES(10,1,1,'12-3-2020','19:30');

INSERT INTO funciones VALUES(11,2,2,'6-3-2020','16:30');
INSERT INTO funciones VALUES(12,2,2,'6-3-2020','18:45');
INSERT INTO funciones VALUES(13,2,2,'9-3-2020','16:30');
INSERT INTO funciones VALUES(14,2,2,'9-3-2020','18:45');
INSERT INTO funciones VALUES(15,2,2,'10-3-2020','16:30');
INSERT INTO funciones VALUES(16,2,2,'10-3-2020','18:45');
INSERT INTO funciones VALUES(17,2,2,'11-3-2020','16:30');
INSERT INTO funciones VALUES(18,2,2,'11-3-2020','18:45');
INSERT INTO funciones VALUES(19,2,2,'12-3-2020','16:30');
INSERT INTO funciones VALUES(20,2,2,'12-3-2020','18:45');

INSERT INTO funciones VALUES(21,3,3,'6-3-2020','17:00');
INSERT INTO funciones VALUES(22,3,3,'6-3-2020','19:10');
INSERT INTO funciones VALUES(23,3,3,'9-3-2020','17:00');
INSERT INTO funciones VALUES(24,3,3,'9-3-2020','19:10');
INSERT INTO funciones VALUES(25,3,3,'10-3-2020','17:00');
INSERT INTO funciones VALUES(26,3,3,'10-3-2020','19:10');
INSERT INTO funciones VALUES(27,3,3,'11-3-2020','17:00');
INSERT INTO funciones VALUES(28,3,3,'11-3-2020','19:10');
INSERT INTO funciones VALUES(29,3,3,'12-3-2020','17:00');
INSERT INTO funciones VALUES(30,3,3,'12-3-2020','19:10');

INSERT INTO funciones VALUES(31,4,4,'6-3-2020','18:00');
INSERT INTO funciones VALUES(32,4,4,'6-3-2020','20:00');
INSERT INTO funciones VALUES(33,4,4,'9-3-2020','18:00');
INSERT INTO funciones VALUES(34,4,4,'9-3-2020','20:00');
INSERT INTO funciones VALUES(35,4,4,'10-3-2020','18:00');
INSERT INTO funciones VALUES(36,4,4,'10-3-2020','20:00');
INSERT INTO funciones VALUES(37,4,4,'11-3-2020','18:00');
INSERT INTO funciones VALUES(38,4,4,'11-3-2020','20:00');
INSERT INTO funciones VALUES(39,4,4,'12-3-2020','18:00');
INSERT INTO funciones VALUES(40,4,4,'12-3-2020','20:00');

INSERT INTO funciones VALUES(41,5,1,'13-3-2020','18:00');
INSERT INTO funciones VALUES(42,5,1,'13-3-2020','19:30');
INSERT INTO funciones VALUES(43,5,1,'16-3-2020','18:00');
INSERT INTO funciones VALUES(44,5,1,'16-3-2020','19:30');
INSERT INTO funciones VALUES(45,5,1,'17-3-2020','18:00');
INSERT INTO funciones VALUES(46,5,1,'17-3-2020','19:30');
INSERT INTO funciones VALUES(47,5,1,'18-3-2020','18:00');
INSERT INTO funciones VALUES(48,5,1,'18-3-2020','19:30');
INSERT INTO funciones VALUES(49,5,1,'19-3-2020','18:00');
INSERT INTO funciones VALUES(50,5,1,'19-3-2020','19:30');

INSERT INTO funciones VALUES(51,6,2,'13-3-2020','18:00');
INSERT INTO funciones VALUES(52,6,2,'13-3-2020','20:15');
INSERT INTO funciones VALUES(53,6,2,'16-3-2020','18:00');
INSERT INTO funciones VALUES(54,6,2,'16-3-2020','20:15');
INSERT INTO funciones VALUES(55,6,2,'17-3-2020','18:00');
INSERT INTO funciones VALUES(56,6,2,'17-3-2020','20:15');
INSERT INTO funciones VALUES(57,6,2,'18-3-2020','18:00');
INSERT INTO funciones VALUES(58,6,2,'18-3-2020','20:15');
INSERT INTO funciones VALUES(59,6,2,'19-3-2020','18:00');
INSERT INTO funciones VALUES(60,6,2,'19-3-2020','20:15');

INSERT INTO funciones VALUES(61,7,3,'13-3-2020','17:00');
INSERT INTO funciones VALUES(62,7,3,'13-3-2020','19:15');
INSERT INTO funciones VALUES(63,7,3,'16-3-2020','17:00');
INSERT INTO funciones VALUES(64,7,3,'16-3-2020','19:15');
INSERT INTO funciones VALUES(65,7,3,'17-3-2020','17:00');
INSERT INTO funciones VALUES(66,7,3,'17-3-2020','19:15');
INSERT INTO funciones VALUES(67,7,3,'18-3-2020','17:00');
INSERT INTO funciones VALUES(68,7,3,'18-3-2020','19:15');
INSERT INTO funciones VALUES(69,7,3,'19-3-2020','17:00');
INSERT INTO funciones VALUES(70,7,3,'19-3-2020','19:15');

INSERT INTO funciones VALUES(71,8,4,'13-3-2020','17:00');
INSERT INTO funciones VALUES(72,8,4,'13-3-2020','18:45');
INSERT INTO funciones VALUES(73,8,4,'16-3-2020','17:00');
INSERT INTO funciones VALUES(74,8,4,'16-3-2020','18:45');
INSERT INTO funciones VALUES(75,8,4,'17-3-2020','17:00');
INSERT INTO funciones VALUES(76,8,4,'17-3-2020','18:45');
INSERT INTO funciones VALUES(77,8,4,'18-3-2020','17:00');
INSERT INTO funciones VALUES(78,8,4,'18-3-2020','18:45');
INSERT INTO funciones VALUES(79,8,4,'19-3-2020','17:00');
INSERT INTO funciones VALUES(80,8,4,'19-3-2020','18:45');

INSERT INTO funciones VALUES(81,9,1,'20-3-2020','17:00');
INSERT INTO funciones VALUES(82,9,1,'20-3-2020','19:00');
INSERT INTO funciones VALUES(83,9,1,'23-3-2020','17:00');
INSERT INTO funciones VALUES(84,9,1,'23-3-2020','19:00');
INSERT INTO funciones VALUES(85,9,1,'24-3-2020','17:00');
INSERT INTO funciones VALUES(86,9,1,'24-3-2020','19:00');
INSERT INTO funciones VALUES(87,9,1,'25-3-2020','17:00');
INSERT INTO funciones VALUES(88,9,1,'25-3-2020','19:00');
INSERT INTO funciones VALUES(89,9,1,'26-3-2020','17:00');
INSERT INTO funciones VALUES(90,9,1,'26-3-2020','19:00');

INSERT INTO funciones VALUES(91,10,2,'20-3-2020','18:00');
INSERT INTO funciones VALUES(92,10,2,'20-3-2020','20:30');
INSERT INTO funciones VALUES(93,10,2,'23-3-2020','18:00');
INSERT INTO funciones VALUES(94,10,2,'23-3-2020','20:30');
INSERT INTO funciones VALUES(95,10,2,'24-3-2020','18:00');
INSERT INTO funciones VALUES(96,10,2,'24-3-2020','20:30');
INSERT INTO funciones VALUES(97,10,2,'25-3-2020','18:00');
INSERT INTO funciones VALUES(98,10,2,'25-3-2020','20:30');
INSERT INTO funciones VALUES(99,10,2,'26-3-2020','18:00');
INSERT INTO funciones VALUES(100,10,2,'26-3-2020','20:30');

INSERT INTO funciones VALUES(101,11,3,'20-3-2020','17:00');
INSERT INTO funciones VALUES(102,11,3,'20-3-2020','20:00');
INSERT INTO funciones VALUES(103,11,3,'23-3-2020','17:00');
INSERT INTO funciones VALUES(104,11,3,'23-3-2020','20:00');
INSERT INTO funciones VALUES(105,11,3,'24-3-2020','17:00');
INSERT INTO funciones VALUES(106,11,3,'24-3-2020','20:00');
INSERT INTO funciones VALUES(107,11,3,'25-3-2020','17:00');
INSERT INTO funciones VALUES(108,11,3,'25-3-2020','20:00');
INSERT INTO funciones VALUES(109,11,3,'26-3-2020','17:00');
INSERT INTO funciones VALUES(110,11,3,'26-3-2020','20:00');

INSERT INTO funciones VALUES(111,12,4,'20-3-2020','16:30');
INSERT INTO funciones VALUES(112,12,4,'20-3-2020','19:00');
INSERT INTO funciones VALUES(113,12,4,'23-3-2020','16:30');
INSERT INTO funciones VALUES(114,12,4,'23-3-2020','19:00');
INSERT INTO funciones VALUES(115,12,4,'24-3-2020','16:30');
INSERT INTO funciones VALUES(116,12,4,'24-3-2020','19:00');
INSERT INTO funciones VALUES(117,12,4,'25-3-2020','16:30');
INSERT INTO funciones VALUES(118,12,4,'25-3-2020','19:00');
INSERT INTO funciones VALUES(119,12,4,'26-3-2020','16:30');
INSERT INTO funciones VALUES(120,12,4,'26-3-2020','19:00');

INSERT INTO funciones VALUES(121,13,1,'27-3-2020','17:30');
INSERT INTO funciones VALUES(122,13,1,'27-3-2020','19:45');
INSERT INTO funciones VALUES(123,13,1,'30-3-2020','17:30');
INSERT INTO funciones VALUES(124,13,1,'30-3-2020','19:45');
INSERT INTO funciones VALUES(125,13,1,'31-3-2020','17:30');
INSERT INTO funciones VALUES(126,13,1,'31-3-2020','19:45');
INSERT INTO funciones VALUES(127,13,1,'1-4-2020','17:30');
INSERT INTO funciones VALUES(128,13,1,'1-4-2020','19:45');
INSERT INTO funciones VALUES(129,13,1,'2-4-2020','17:30');
INSERT INTO funciones VALUES(130,13,1,'2-4-2020','19:45');

INSERT INTO funciones VALUES(131,14,2,'27-3-2020','17:30');
INSERT INTO funciones VALUES(132,14,2,'27-3-2020','20:15');
INSERT INTO funciones VALUES(133,14,2,'30-3-2020','17:30');
INSERT INTO funciones VALUES(134,14,2,'30-3-2020','20:15');
INSERT INTO funciones VALUES(135,14,2,'31-3-2020','17:30');
INSERT INTO funciones VALUES(136,14,2,'31-3-2020','20:15');
INSERT INTO funciones VALUES(137,14,2,'1-4-2020','17:30');
INSERT INTO funciones VALUES(138,14,2,'1-4-2020','20:15');
INSERT INTO funciones VALUES(139,14,2,'2-4-2020','17:30');
INSERT INTO funciones VALUES(140,14,2,'2-4-2020','20:15');

INSERT INTO funciones VALUES(141,15,2,'27-3-2020','16:30');
INSERT INTO funciones VALUES(142,15,2,'27-3-2020','20:15');
INSERT INTO funciones VALUES(143,15,2,'30-3-2020','16:30');
INSERT INTO funciones VALUES(144,15,2,'30-3-2020','20:15');
INSERT INTO funciones VALUES(145,15,2,'31-3-2020','16:30');
INSERT INTO funciones VALUES(146,15,2,'31-3-2020','20:15');
INSERT INTO funciones VALUES(147,15,2,'1-4-2020','16:30');
INSERT INTO funciones VALUES(148,15,2,'1-4-2020','20:15');
INSERT INTO funciones VALUES(149,15,2,'2-4-2020','16:30');
INSERT INTO funciones VALUES(150,15,2,'2-4-2020','20:15');
