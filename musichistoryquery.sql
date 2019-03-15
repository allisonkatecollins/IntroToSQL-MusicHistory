--Query all of the entries in the Genre table
select * from Genre;

--Using the INSERT statement, add one of your favorite artists to the Artist table.
insert into Artist (ArtistName, YearEstablished) values ('Frank Ocean', 2012);

--Using the INSERT statement, add one, or more, albums by your artist to the Album table.
insert into Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) values ('Blonde', '08/20/2016', 17, 'Boys Dont Cry', 28, 6);

--Using the INSERT statement, add some songs that are on that album to the Song table.
insert into Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) values ('Ivy', 409, '08/20/2016', 6, 28, 24);
insert into Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) values ('Solo', 417, '08/20/2016', 6, 28, 24);
insert into Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) values ('Nikes', 514, '08/20/2016', 6, 28, 24);
insert into Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) values ('Futura Free', 924, '08/20/2016', 6, 28, 24);
insert into Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) values ('White Ferrari', 409, '08/20/2016', 6, 28, 24);

--Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in.
--Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
SELECT a.Title, s.Title, ar.ArtistName FROM Song s 
LEFT JOIN Album a ON a.id = s.AlbumId
LEFT JOIN Artist ar On ar.id = a.ArtistId
where a.ArtistId = 28;

--Write a SELECT statement to display how many songs exist for each album.
--You'll need to use the COUNT() function and the GROUP BY keyword sequence.

