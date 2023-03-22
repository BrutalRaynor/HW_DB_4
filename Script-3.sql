--количество исполнителей в каждом жанре

select count(artists_id), g.genre_name from artistsgenres pg 
join genres g on pg.genres_id = g.id
join artists p on pg.artists_id = p.id 
group by genre_name; 

--количество треков, вошедших в альбомы 2019-2020 годов

select count(track_name) from tracks t 
join albums a on t.album_id = a.id 
where a.release_year BETWEEN 2019 AND 2020;

--средняя продолжительность треков по каждому альбому

select a.album_name, avg(track_duration) from tracks t 
join albums a on t.album_id = a.id 
group by album_name;

--все исполнители, которые не выпустили альбомы в 2020 году

select artist_name from artists p 
join albumsartists ap on p.id = ap.artists_id 
join albums a on ap.albums_id = a.id 
where a.release_year <> 2020;

--названия сборников, в которых присутствует конкретный исполнитель

select compilation_name from compilations c 
join compilationstracks ct on c.id = ct.compilation_id 
join tracks t on ct.tracks_id = t.id 
join albums a on t.album_id = a.id 
join albumsartists ap on a.id = ap.albums_id 
join artists p on ap.artists_id = p.id 
where p.artist_name = 'Queen';

--название альбомов, в которых присутствуют исполнители более 1 жанра

select album_name from albums a 
join albumsartists ap on a.id = ap.albums_id 
join artists p on ap.artists_id = p.id 
join artistsgenres pg on p.id = pg.artists_id 
join genres g on pg.genres_id = g.id 
group by a.album_name 
having count(g.genre_name) > 1;

--наименование треков, которые не входят в сборники

select track_name from tracks t 
left join compilationstracks ct on t.id = ct.tracks_id 
left join compilations c on ct.compilation_id = c.id 
where ct.compilation_id is null; 

--исполнителя(-ей), написавшего самый короткий по продолжительности трек

select artist_name from artists p 
join albumsartists ap on p.id = ap.artists_id 
join tracks t on ap.albums_id = t.album_id 
where t.track_duration = (select min(track_duration) from tracks);

--название альбомов, содержащих наименьшее количество треков

select album_name, count(track_name) from albums a 
join tracks t on a.id = t.album_id 
group by album_name 
having count(track_name) = (
	select count(track_name) from tracks t2 
	join albums a2 on t2.album_id = a2.id  
	group by album_name 
	order by count(track_name) limit 1);