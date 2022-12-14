SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `Item`;
DROP TABLE IF EXISTS `Livro`;
DROP TABLE IF EXISTS `Entity1`;
DROP TABLE IF EXISTS `CD`;
DROP TABLE IF EXISTS `Musica`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE `Item` (
    `Id` INTEGER NOT NULL,
    `Titulo` VARCHAR(100) NOT NULL,
    `Descricao` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`Id`)
);

CREATE TABLE `Livro` (
    `Id` INTEGER NOT NULL,
    `Ano` INTEGER NOT NULL,
    `Autor` INTEGER NOT NULL,
    `item_ID` INTEGER NOT NULL,
    PRIMARY KEY (`Id`)
);

CREATE TABLE `Entity1` (
);

CREATE TABLE `CD` (
    `id` INTEGER NOT NULL,
    `Produtora` VARCHAR NOT NULL,
    `Ano` DATETIME NOT NULL,
    `item_Id` INTEGER NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `Musica` (
    `Id` INTEGER NOT NULL,
    `Nome` VARCHAR NOT NULL,
    `CD_Id` INTEGER NOT NULL,
    PRIMARY KEY (`Id`)
);

ALTER TABLE `Musica` ADD FOREIGN KEY (`CD_Id`) REFERENCES `CD`(`id`);