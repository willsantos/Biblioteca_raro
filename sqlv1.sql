SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `Item`;
DROP TABLE IF EXISTS `Livro`;
DROP TABLE IF EXISTS `CD`;
DROP TABLE IF EXISTS `Musica`;
DROP TABLE IF EXISTS `DVD`;
DROP TABLE IF EXISTS `Estante`;
DROP TABLE IF EXISTS `Associado`;
DROP TABLE IF EXISTS `Endereco`;
DROP TABLE IF EXISTS `Funcionario`;
DROP TABLE IF EXISTS `Telefone`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE `Item` (
    `Id` INTEGER NOT NULL,
    `Titulo` VARCHAR(100) NOT NULL,
    `Descricao` VARCHAR(255) NOT NULL,
    `estante_id` INTEGER NOT NULL,
    PRIMARY KEY (`Id`)
);

CREATE TABLE `Livro` (
    `Id` INTEGER NOT NULL,
    `Ano` DATE NOT NULL,
    `Autor` VARCHAR NOT NULL,
    `item_id` INTEGER NOT NULL,
    PRIMARY KEY (`Id`)
);

CREATE TABLE `CD` (
    `id` INTEGER NOT NULL,
    `Produtora` VARCHAR NOT NULL,
    `Ano` DATE NOT NULL,
    `item_id` INTEGER NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `Musica` (
    `Id` INTEGER NOT NULL,
    `Nome` VARCHAR NOT NULL,
    `CD_id` INTEGER NOT NULL,
    PRIMARY KEY (`Id`)
);

CREATE TABLE `DVD` (
    `id` INTEGER NOT NULL,
    `Produtora` VARCHAR NOT NULL,
    `Ano` DATE NOT NULL,
    `Diretores` VARCHAR NOT NULL,
    `item_id` INTEGER NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `Estante` (
    `id` INTEGER NOT NULL,
    `Numero` INTEGER NOT NULL,
    `Sala` INTEGER NOT NULL,
    `Andar` VARCHAR NOT NULL,
    `funcionario_id` INTEGER NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `Associado` (
    `id` INTEGER NOT NULL,
    `Nome` VARCHAR NOT NULL,
    `endereco_id` INTEGER NOT NULL,
    `telefone_id` INTEGER NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `Endereco` (
    `id` INTEGER NOT NULL,
    `Logradouro` VARCHAR NOT NULL,
    `numero` VARCHAR NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `Funcionario` (
    `id` INTEGER NOT NULL,
    `Matricula` INTEGER NOT NULL,
    `Nome` INTEGER NOT NULL,
    `Sexo` INTEGER NOT NULL,
    `Turno` INTEGER NOT NULL,
    `telefone_id` INTEGER NOT NULL,
    `endereco_id` INTEGER NOT NULL,
    PRIMARY KEY (`id`, `Matricula`),
    UNIQUE (`Matricula`)
);

CREATE TABLE `Telefone` (
    `id` INTEGER NOT NULL,
    `Telefone 1` VARCHAR NOT NULL,
    `Telefone 2` VARCHAR NOT NULL,
    `WhatsApp` VARCHAR NOT NULL,
    PRIMARY KEY (`id`)
);

ALTER TABLE `Livro` ADD FOREIGN KEY (`item_id`) REFERENCES `Item`(`Id`);
ALTER TABLE `CD` ADD FOREIGN KEY (`item_id`) REFERENCES `Item`(`Id`);
ALTER TABLE `Musica` ADD FOREIGN KEY (`CD_id`) REFERENCES `CD`(`id`);
ALTER TABLE `DVD` ADD FOREIGN KEY (`item_id`) REFERENCES `Item`(`Id`);