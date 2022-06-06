--Tablas
/*==============================================================*/
/* Table: CLUB                                                  */
/*==============================================================*/
create table CLUB (
   ID_CLUB              int                  not null,
   ID_PROFESOR          int                  null,
   NOMBRE_CLUB          varchar(60)          null,
   DESCRIPCION_CLUB     varchar(200)         null,
   MATERIALES_CLUB      varchar(200)         null,
   DURACION_CLUB        int                  null,
   constraint PK_CLUB primary key nonclustered (ID_CLUB)
)
go

/*==============================================================*/
/* Table: CLUB_MATRICULA                                        */
/*==============================================================*/
create table CLUB_MATRICULA (
   ID_CLUB_MATRI        int                  not null,
   ID_NINO              int                  null,
   ID_CLUB              int                  null,
   RENDIMIENTO_CLUB_MATRI varchar(30)          null,
   OBSERVACIONES_CLUB_MATRI varchar(200)         null,
   ANO_LECTIVO_CLUB_MATRI int                  null,
   constraint PK_CLUB_MATRICULA primary key nonclustered (ID_CLUB_MATRI)
)
go

/*==============================================================*/
/* Table: ESTADO_SOCIAL                                         */
/*==============================================================*/
create table ESTADO_SOCIAL (
   ID_ESTADO_SOCIAL     int                  not null,
   TALLA_CAMISA_ESTADO_SOCIAL int                  null,
   TALLA_PANTALON_ESTADO_SOCIAL int                  null,
   TALLA_ZAPATOS_ESTADO_SOCIAL int                  null,
   constraint PK_ESTADO_SOCIAL primary key nonclustered (ID_ESTADO_SOCIAL)
)
go

/*==============================================================*/
/* Table: MATRICULA                                             */
/*==============================================================*/
create table MATRICULA (
   ID_MATRICULA         int                  not null,
   ID_NINO              int                  null,
   FECHA__MATRICULA     datetime             null,
   ANO_LECTIVO_MATRICULA int                  null,
   PRECIO_MATRICULA     int                  null,
   DESCRIPCION_MATRICULA varchar(20)          null,
   constraint PK_MATRICULA primary key nonclustered (ID_MATRICULA)
)
go

/*==============================================================*/
/* Table: NINO                                                  */
/*==============================================================*/
create table NINO (
   ID_NINO              int                  not null,
   ID_ESTADO_SOCIAL     int                  null,
   ID_SALUD             int                  null,
   ID_REPRESENTANTE     int                  null,
   CEDULA_NINO          varchar(10)          null,
   NOMBRES_NINO         varchar(40)          null,
   APELLIDO_NINO        varchar(40)          null,
   GENERO_NINO          varchar(20)          null,
   EDAD_NINO            int                  null,
   NACIONALIDAD_NINO    varchar(20)          null,
   constraint PK_NINO primary key nonclustered (ID_NINO)
)
go

/*==============================================================*/
/* Table: PROFESOR                                              */
/*==============================================================*/
create table PROFESOR (
   ID_PROFESOR          int                  not null,
   NOMBRE_PROFESOR      varchar(40)          null,
   APELLIDO_PROFESOR    varchar(40)          null,
   CEDULA_PROFESOR      varchar(10)          null,
   PROFESION_PROFESOR   varchar(40)          null,
   EDAD_PROFESOR        int                  null,
   GENERO_PROFESOR      varchar(40)          null,
   NACIONALIDAD_PROFESOR varchar(40)          null,
   ANO_LECTIVO_PROFESOR int                  null,
   constraint PK_PROFESOR primary key nonclustered (ID_PROFESOR)
)
go

/*==============================================================*/
/* Table: REPRESENTANTE                                         */
/*==============================================================*/
create table REPRESENTANTE (
   ID_REPRESENTANTE     int                  not null,
   ROL_REPRESENTANTE    varchar(20)          null,
   CEDULA_REPRESENTANTE varchar(10)          null,
   NOMBRES_REPRESENTANTE varchar(40)          null,
   APELLIDOS_REPRESENTANTE varchar(40)          null,
   GENERO_REPRESENTANTE varchar(20)          null,
   NACIONALIDAD_REPRESENTANTE varchar(20)          null,
   DIRECCION_REPREESNTANTE varchar(60)          null,
   TELEFONO_HOGAR_REPRESNTANTE varchar(10)          null,
   TELEFONO_DOMICILIO_REPRESENTANTE varchar(10)          null,
   constraint PK_REPRESENTANTE primary key nonclustered (ID_REPRESENTANTE)
)
go

/*==============================================================*/
/* Table: SALUD                                                 */
/*==============================================================*/
create table SALUD (
   ID_SALUD             int                  not null,
   ALERGIAS_SALUD       varchar(40)          null,
   MEDICAMENTO_REGULAR_SALUD varchar(40)          null,
   ULTIMA_FECHA_ENFERMO_SALUD datetime             null,
   DIAGNOSTICO_SALUD    varchar(40)          null,
   DOCTOR_TRATANTE_SALUD varchar(40)          null,
   constraint PK_SALUD primary key nonclustered (ID_SALUD)
)
go

--Ingreso de datos
--tabla representante
Insert into REPRESENTANTE VALUES (1,'Padre','1325478962','Xavier Andres','Aviles Castro',
'Masculino','Ecuatoriano','El palmar','0989141155','0528445');
Insert into REPRESENTANTE VALUES (2,'Padre','1326984562','Ariel Paco','Cefran Meza',
'Masculino','Ecuatoriano','La pradera','092156328','0529635');
Insert into REPRESENTANTE VALUES (3,'Tutor','1325478962','Alfonso Hernandez','Bermudez Alvarado',
'Masculino','Ecuatoriano','Los esteros','098521432','0527824');
Insert into REPRESENTANTE VALUES (4,'Tutor','1325478962','Maria Genesis','Velez Mendoza',
'Femenino','Ecuatoriano','El palmar','0989141155','0528445');
Insert into REPRESENTANTE VALUES (5,'Madre','1324851489','Analy Andrea','Alonzo Figueroa',
'Femenino','Ecuatoriano','Barrio Cuba','098214563','0529215');
Insert into REPRESENTANTE VALUES (6,'Madre','1325478621','Mell Nikole','Mera Alcivar',
'Femenino','Ecuatoriano','Los esteros','098214563','0529652');
Insert into REPRESENTANTE VALUES (7,'Padre','1325789658','Pedro Andres','Hernandez Castro',
'Masculino','Ecuatoriano','El palmar','0982145698','0523298');
Insert into REPRESENTANTE VALUES (8,'Padre','1351709405','Alfonso Andres','Vele Castro',
'Masculino','Ecuatoriano','El palmar','0989141155','0528445');
Insert into REPRESENTANTE VALUES (9,'Padre','1351709405','Alex Mateo','Andrade Castro',
'Masculino','Ecuatoriano','Jocay','0982145632','0525862');
Insert into REPRESENTANTE VALUES (10,'Tutor','1352489632','Ariel Andres','Matute Castro',
'Masculino','Ecuatoriano','El palmar','0982514569','0528545');
Insert into REPRESENTANTE VALUES (11,'Madre','1354896325','Patricia Romero','Alonzo anchundia',
'Femenino','Ecuatoriano','Barrio san ignacio','098514569','0585555');


---Profesor
Insert into Profesor values(1,'Pedro Hernandes','Avile Castro','1317545405','Maestro Artes',25,'Masculino','Ecuatoriano',2021);
Insert into Profesor values(2,'Maria Romina','Castro Alvarado','1352698751','Maestro Pensamiento Matematico',24,'Femenino','Ecuatoriano',2021);
Insert into Profesor values(3,'Paco Pedro','Velez Cifuentes','1265987456','Maestro Educación Fisica',26,'Masculino','Venenzolano',2021);
Insert into Profesor values(4,'Ariel Alex','Anchundia Mera','1352478963','Maestro Manualidades',27,'Masculino','Ecuatoriano',2021);
Insert into Profesor values(5,'Fernanda Analy','Mera Mera','1352478963','Maestro Dibujo',30,'Femenino','Ecuatoriano',2021);
Insert into Profesor values(6,'Genesis Nikole','Flecher Mera','1356984525','Maestro Historia',29,'Femenino','Ecuatoriano',2021);
Insert into Profesor values(7,'Andres Mateo','Velez Mero','1362547896','Maestro Ingles',32,'Masculino','Venenzolano',2022);
Insert into Profesor values(8,'Irvin Lenny','Anchundia Aviles','1324789635','Maestro Artes',28,'Masculino','Ecuatoriano',2022);
Insert into Profesor values(9,'Karen Carolina','Mera Arcentales','1352698745','Maestro Pensamiento Matematico',29,'Femenino','Ecuatoriano',2022);
Insert into Profesor values(10,'Jorge Carlos','Aviles Arcentales','1352698745','Maestro Manualidades',29,'Masculino','Ecuatoriano',2022);

---salud
insert into Salud values (1,'Abejas, Polen','Paracetamol y jarabe','25-05-2022','No debe exponerse a lugares con Abejas','Mateo Aviles');
insert into Salud values (2,'Pelo de Perro','Loratadina','26-05-2022','No debe tener mascotas','Paco Velez');
insert into Salud values (3,'Picadura de insectos','doxiciclina, suero con vitaminas','15-05-2022','No debe exponerse a lugares con insectos','Irvin Palacios');
insert into Salud values (4,'Fragancias','Loratanida','5-05-2022','No debe ponerse perfumes','Ariel Moreno');
insert into Salud values (5,'camaron','Loratadina','29-05-2022','No debe comer camarones ','Maria vera');

--estado social
insert into Estado_Social values(1,30,30,28);
insert into Estado_Social values(2,28,33,34);
insert into Estado_Social values(3,26,34,32);
insert into Estado_Social values(4,30,29,26);
insert into Estado_Social values(5,29,30,28);

--Club
insert into Club values(1,2,'Artes con plastilina','Un club aprender a hacer figuras con plastilina',
'Se necesitan guantes, plastilina, regla',2);
insert into Club values(2,1,'Armar legos','Un club para armar legos  desarrollar mas actividad mental',
'Se necesitan legos, imagenes',3);
insert into Club values(3,3,'Canto','Un club aprender a cantar canciones de niños',
'Se necesitan cuadernos, lapiz, borrador ',4);
insert into Club values(4,2,'Caligrafia','Un club para mejorar la manera de escribir',
'Se necesitan cuaderno, lapiz, esferos, borrador, hojas de linea',4);

---niños
insert into Nino values(1,1,2,1,'1352478965','Xavier Alberto','Avilés Mendoza','Masculino',5,'Ecuatoriano');
insert into Nino values(2,2,3,3,'1352489654','Maria Matilde','Velez Macias','Fmenino',6,'Ecuatoriano');
insert into Nino values(3,3,4,4,'1325647896','Pedro Arcentales','Sanchez Avila','Masculino',5,'Ecuatoriano');
insert into Nino values(4,1,5,5,'1325489654','Analy Pamela','Anchunida Alonzo','Femenino',6,'Ecuatoriano');
insert into Nino values(5,2,6,2,'1385455555','Jorge Carlos','Cefran Macias','Masculino',4,'Ecuatoriano');
insert into Nino values(6,1,5,6,'1365455554','Genesis Mell','Anchundia Mera','Femenino',4,'Ecuatoriano');
insert into Nino values(7,2,6,9,'1385455584','Carlos Andrés','Andrade Mera','Masculino',5,'Ecuatoriano');
insert into Nino values(8,3,7,8,'1325478952','Yesly Maria','Velez Escobar','Femenino',6,'Ecuatoriano');
insert into Nino values(9,5,4,7,'1236547896','Jorge Andrés','Hernandez Parrales','Masculino',4,'Ecuatoriano');
insert into Nino values(10,4,5,11,'1236547896','Nikole Andrea','Anchundia Alonzo','Femenino',5,'Ecuatoriano');
insert into Nino values(11,1,2,10,'1385455584','José Andrés','Mera Mera','Masculino',5,'Ecuatoriano');


--matricula
insert into Matricula values (1,1,'20-05-2022',2022,90,'Matriculado');
insert into Matricula values (2,2,'10-05-2022',2022,90,'Retirado');
insert into Matricula values (3,3,'2-05-2022',2022,90,'Matriculado');
insert into Matricula values (4,4,'18-05-2022',2022,90,'Matriculado');
insert into Matricula values (5,5,'12-12-2022',2021,90,'Retirado');
insert into Matricula values (6,6,'13-12-2022',2021,90,'Retirado');
insert into Matricula values (7,7,'11-12-2022',2021,90,'Matriculado');
insert into Matricula values (8,8,'22-05-2022',2022,90,'Matriculado');
insert into Matricula values (9,9,'16-05-2022',2022,90,'Retirado');
insert into Matricula values (10,10,'29-05-2022',2021,90,'Matriculado');
insert into Matricula values (11,11,'30-05-2022',2021,90,'Matriculado');

--club_matricula
insert into club_Matricula values(1,1,2,'Bueno','Se porto muy bien',2022);
insert into club_Matricula values(2,3,1,'Regular','no hizo caso',2022);
insert into club_Matricula values(3,5,3,'Bueno','Cumplio con lo debido',2022);
insert into club_Matricula values(4,6,4,'Excelente','Saco muy buenas calificaciones',2022);
insert into club_Matricula values(5,3,2,'Excelente','Hizo un buen trabajo',2021);
insert into club_Matricula values(6,5,2,'Regular','No hizo casi tareas',2022);
insert into club_Matricula values(7,6,3,'Bueno','Presentaba siempre tareas',2022);
insert into club_Matricula values(8,5,3,'Bueno','Siempre levantaba la mano',2021);