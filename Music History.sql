CREATE TABLE `Album` 
(
	`Id` int,
	`Title` varchar(255),
	`ReleaseDate` varchar(255),
	`AlbumLength` int,
	`Label` varchar(255),
	`ArtistId` FK,
	`GenreId` FK
);

CREATE TABLE `Artist` 
(
	`Id` int,
	`ArtistName` varchar(255),
	`YearEstablished` int
);

CREATE TABLE `Genre` 
(
	`Id` int,
	`Label` varchar(255)
);

CREATE TABLE `Song` 
(
	`Id` int,
	`Title` varchar(255),
	`SongLength` int,
	`ReleaseDate` varchar(255),
	`GenreId` FK,
	`ArtistId` FK,
	`AlbumId` FK
);

ALTER TABLE `Album` ADD FOREIGN KEY (`Id`) REFERENCES `Artist` (`Id`);

ALTER TABLE `Genre` ADD FOREIGN KEY (`Id`) REFERENCES `Album` (`Id`);

ALTER TABLE `Song` ADD FOREIGN KEY (`Id`) REFERENCES `Album` (`Id`);

ALTER TABLE `Genre` ADD FOREIGN KEY (`Id`) REFERENCES `Song` (`Id`);

ALTER TABLE `Song` ADD FOREIGN KEY (`Id`) REFERENCES `Artist` (`Id`);
