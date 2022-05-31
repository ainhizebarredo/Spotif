fun<-function(nombre){
  id<-search_artists(
    nombre,
    output = c('tidy'),
    limit=20,
    offset = 0,
    token = my_token
  )
  id<-id%>%
    filter(artist==nombre)%>%
    select(id)
  id<-id[1,]
  canciones<-get_artist_top_tracks(
    id,
    country = 'ES',
    output = c("tidy", "raw"),
    limit = 20,
    offset = 0,
    token = my_token)
  canciones
  canciones<-canciones%>%
    select(artist_name, popularity,track)%>%
    arrange(desc(popularity))
  canciones<-canciones[1,]
  print(paste('La cancion', caciones$track, 'del cantante',canciones$artist_name,'tiene una popularidad de',canciones$popularity))
}

fun('Bad Gyal')

