library(spotifyr)


Sys.setenv(SPOTIFY_CLIENT_ID = '76f37f6c523d482a8c825d01db224388')
Sys.setenv(SPOTIFY_CLIENT_SECRET = '934add8cf3744afc89d1391370327a5d')

access_token <- get_spotify_access_token()

classical_essentials <- get_playlist_audio_features("", "37i9dQZF1DWWEJlAGA9gs0")
classical_essentials <- get_playlist_audio_analysis("37i9dQZF1DWWEJlAGA9gs0")

not_classical <- get_tidy_audio_analysis("4fDodwdZ1LBDL2I2WCnUMY")

wood <-
  get_tidy_audio_analysis("6IQILcYkN2S2eSu5IHoPEH") |>
  select(segments) |>
  unnest(segments) |>
  select(start, duration, pitches)
