SELECT *
FROM databaseproject.artists
WHERE artist_id IN (Select song_artist_id FROM databaseproject.songs
WHERE song_tempo between 85 and 170 AND song_loudness BETWEEN -32 and -16)order by artist_hotness DESC;

#שתי השאילתות מחזירות אותה תוצאה אבל השאילתה השנייה נראית לי "מורכבת יותר"
SELECT *
FROM databaseproject.artists
INNER JOIN databaseproject.songs ON artists.artist_id=songs.song_artist_id
WHERE song_tempo between 85 and 170 AND song_loudness BETWEEN -32 and -16 order by artist_hotness DESC;