------------ Q: the most media type that we have top three 
-------- convert to subquery


SELECT
media_types,
COUNT(6) FROM
  (SELECT
	  tr.TrackId,
	  tr.Name AS Song,
    tr.Composer,
    tr.Bytes,
    ge.Name AS genres_type,
    mt.Name AS media_types
    
    FROM tracks as tr
    JOIN genres as ge
    ON tr.genreid = ge.GenreId
    JOIN media_types as mt
   ON tr.mediatypeid = mt.MediaTypeId)
   
   	/* WHERE media_types = 'MPEG audio file' */       ------------ IF YOU WANT TO SPECIFIC SOMETHING THAT YOU WANT ------------
    
    GROUP by media_types
    ORDER by COUNT(6) DESC;
