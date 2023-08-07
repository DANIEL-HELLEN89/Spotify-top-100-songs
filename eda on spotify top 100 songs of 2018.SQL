--Number of appaerances per artist on the chart
SELECT 
 artists,
 count(artists) number_of_appearance
 FROM `gabriel-project-395001.spotify_2018.top_2018` 
 group by 1

 --Are there more artists in the top 100 with 'Lil' in their name, or with 'DJ' in their name?

 SELECT
 'Lil' as type,
 count(distinct artists) as numberofArtist
 FROM `gabriel-project-395001.spotify_2018.top_2018` 
 where 
 upper(artists) like '%LIL%'
 group by 1

 union all

 select
 'DJ' AS type,
 count(distinct artists) as numberofArtist
 from `gabriel-project-395001.spotify_2018.top_2018`
 where 
 upper(artists) like '%DJ%'
 GROUP BY 1
