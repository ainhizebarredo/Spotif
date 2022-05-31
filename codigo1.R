install.packages('spotidy')
library(spotidy)
library(dplyr)
SPOTIFY_CLIENT_ID <-"79ba4f46f96048509889804d6ae01f8c"
SPOTIFY_CLIENT_SECRET <- "840aa37dd39a4b01a3d388f4d61ec931"
my_token <- get_spotify_api_token(SPOTIFY_CLIENT_ID, SPOTIFY_CLIENT_SECRET)

id_rosalia<-search_artists(
  'ROSALÍA',
  output = c('tidy'),
  limit=20,
  offset = 0,
  token = my_token
)
id_rosalia

artistas10<-get_artist_related_artists(
  '7ltDVBr6mKbRvohxheJ9h1',
  output = "tidy",
  limit = 20,
  offset = 0,
  token = my_token
)

ej1<-artistas10%>%
  select(artist,related_artist,related_artist_id,popularity)%>%
  arrange(desc(popularity))
ej1
ej1<-ej1[1:10,]
ej1
artistas<-get_artists(
  '5TYxZTjIPqKM8K8NuP9woO,3VHAySZQPlfGlNLslzXYpN,0jeYkqwckGJoHQhhXwgzk3,0VZrPa7mWAYXH4CwmYk8Km,4F4pp8NUW08JuXwnoxglpN,5J7rXWjtn5HzUkJ4Jet8Fr,3bvfu2KAve4lPHrhEFDZna,4bJh7sMPcVRiqe5jlnsWQV,1rTUwYS38LkQTlT2fhikch,6i3DxIlAqnDkwELLw4aVrx',
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)
artistas
albunes<-get_artist_albums(
  '5TYxZTjIPqKM8K8NuP9woO',
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token
)

CTANGANA<-get_artist_top_tracks(
  '5TYxZTjIPqKM8K8NuP9woO',
  country = 'ES',
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token)
CTANGANA  
NathyPeluso<-get_artist_top_tracks(
  '3VHAySZQPlfGlNLslzXYpN',
  country = 'ES',
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token)
NathyPeluso  
CruzCafun<-get_artist_top_tracks(
  '0jeYkqwckGJoHQhhXwgzk3',
  country = 'ES',
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token)
CruzCafun  
KiddKeo<-get_artist_top_tracks(
  '0VZrPa7mWAYXH4CwmYk8Km',
  country = 'ES',
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token)
KiddKeo  

BadGyal<-get_artist_top_tracks(
  '4F4pp8NUW08JuXwnoxglpN',
  country = 'ES',
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token)
BadGyal 
AlvaroDiaz<-get_artist_top_tracks(
  '5J7rXWjtn5HzUkJ4Jet8Fr',
  country = 'ES',
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token)
AlvaroDiaz
LOLAINDIGO<-get_artist_top_tracks(
  '3bvfu2KAve4lPHrhEFDZna',
  country = 'ES',
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token)
LOLAINDIGO
DELLAFUENTE<-get_artist_top_tracks(
  '4bJh7sMPcVRiqe5jlnsWQV',
  country = 'ES',
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token)
DELLAFUENTE
YungBeef<-get_artist_top_tracks(
  '1rTUwYS38LkQTlT2fhikch',
  country = 'ES',
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token)
YungBeef
LELEPONS<-get_artist_top_tracks(
  '6i3DxIlAqnDkwELLw4aVrx',
  country = 'ES',
  output = c("tidy", "raw"),
  limit = 20,
  offset = 0,
  token = my_token)
LELEPONS
LELEPONS<-LELEPONS%>%
  filter(artist_name=='Lele Pons')%>%
  arrange(desc(release_date))
LELEPONS<-LELEPONS[1,]
YungBeef<-YungBeef%>%
  filter(artist_name=='Yung Beef')%>%
  arrange(desc(release_date))
YungBeef<-YungBeef[1,]
DELLAFUENTE<-DELLAFUENTE%>%
  filter(artist_name=='DELLAFUENTE')%>%
  arrange(desc(release_date))
DELLAFUENTE<-DELLAFUENTE[1,]
LOLAINDIGO<-LOLAINDIGO%>%
  filter(artist_name=='Lola Indigo')%>%
  arrange(desc(release_date))
LOLAINDIGO<-LOLAINDIGO[1,]
AlvaroDiaz<-AlvaroDiaz%>%
  filter(artist_name=='Alvaro Diaz')%>%
  arrange(desc(release_date))
AlvaroDiaz<-AlvaroDiaz[1,]
BadGyal<-BadGyal%>%
  filter(artist_name=='Bad Gyal')%>%
  arrange(desc(release_date))
BadGyal<-BadGyal[1,]
KiddKeo<-KiddKeo%>%
  filter(artist_name=='Kidd Keo')%>%
  arrange(desc(release_date))
KiddKeo<-KiddKeo[1,]
CruzCafun<-CruzCafun%>%
  filter(artist_name=='Cruz Cafuné')%>%
  arrange(desc(release_date))
CruzCafun<-CruzCafun[1,]
NathyPeluso<-NathyPeluso%>%
  filter(artist_name=='Nathy Peluso')%>%
  arrange(desc(release_date))
NathyPeluso<-NathyPeluso[1,]
CTANGANA<-CTANGANA%>%
  filter(artist_name=='C. Tangana')%>%
  arrange(desc(release_date))
CTANGANA<-CTANGANA[1,]

