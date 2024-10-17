CREATE TABLE  PROFESOR (
	DNI VARCHAR2(9) NOT NULL, /* varchar para valores alfanumericos */
	NOMBRE VARCHAR2(30) NOT NULL, 
	APELLIDO1 VARCHAR2(50) NOT NULL,
	APELLIDO2 VARCHAR2(50) NULL, /* el null indicca que es nulo */
	TIPO VARCHAR2(20) NOT NULL  /* la ultima linea antes del parentesisi sin coma */
	CONSTRAINT pk_profesor  PRIMARY KEY(DNI) /*restricciones */
 );

CREATE TABLE ASIGNATURA (
	CODASIG NUMBER (3), /* el numero que cifras que se puede introducir */
	NOMBRE VARCHAR2(30),
	NUMHORAS NUMBER(3),
	DNI_PROFESOR VARCHAR2(9), /* para almacenar la foreign key */
	CONSTRAINT pk_asigatura PRIMARY KEY(CODASIG)
	CONSTRAINT fk_asignatura FOREIGN KEY(DNI_PROFESOR) 
	REFERENCES  PROFESOR(DNI) /* se relaciona con..*/
 );