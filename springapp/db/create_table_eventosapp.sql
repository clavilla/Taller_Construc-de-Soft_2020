CREATE TABLE `springapp`.`eventos` (
  `id` INT(11) NOT NULL,
  `idType` INT(11) NULL,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `duration` VARCHAR(45) NULL,
  `dayQuantity` VARCHAR(45) NULL,
  `startDate` DATETIME NULL,
  `endDate` DATETIME NULL,
  `time` TIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE `tipos_evento` (
  `id` int NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `imagen` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `contrasenia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;