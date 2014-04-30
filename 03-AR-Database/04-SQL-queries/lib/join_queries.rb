require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  db.execute("SELECT Album.title, Artist.name, Track.name
             FROM
             JOIN Track ON Track.id = Album.Track.id AND Track INNER JOIN Artist = )")
end

def stats_on(db, category)
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  # db.execute("SELECT COUNT(Track),  FROM Genre ")
end

def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists
  # LIMIT 5
end

# SELECT Tennismen.name, Championnship.location FROM (TennisMen INNER JOIN Championship,ON Championnship.id == TennisMen.Championnship.id,)

p detailed_tracks(db)
