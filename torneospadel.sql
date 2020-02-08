USE torneospadel;

CREATE TABLE jugadores (
idjugador INT PRIMARY KEY AUTO_INCREMENT ,
nombre VARCHAR (60) NOT NULL ,
apellidos VARCHAR (60) NOT NULL ,
nivel FLOAT ,
categoria VARCHAR (30) 
);
ALTER TABLE jugadores ADD puntos INT (255) ;
ALTER TABLE jugadores ADD sexo CHAR ;

INSERT INTO jugadores (nombre , apellidos , nivel,categoria) Values ('Marc','Alegria Molina' , 3.0 , 'Cuarta Alta Masculina');
INSERT INTO jugadores (nombre , apellidos , nivel,categoria,puntos) Values ('Josep','Aleixendri Bel' , 3.5, 'Cuarta Alta Masculina' , 70);
INSERT INTO jugadores (nombre , apellidos , nivel,categoria,puntos) Values ('Alejandro','Garcia',  3.5, 'Cuarta Alta Masculina' , 70);
INSERT INTO jugadores (nombre , apellidos , nivel,categoria,puntos,sexo) Values ('Carla','Garcia',  3.0, 'Cuarta Alta Masculina' , 50,'F');
UPDATE jugadores SET categoria = '4ªCategoria'  WHERE idjugador=2;

SELECT * FROM jugadores;
ALTER TABLE torneos ADD CONSTRAINT fk_usuarios FOREIGN KEY (idusuarios) REFERENCES usuarios (idusuario)  ;
ALTER TABLE torneos ADD CONSTRAINT fk_jugador FOREIGN KEY (idjugador) REFERENCES jugadores (idjugador)  ;