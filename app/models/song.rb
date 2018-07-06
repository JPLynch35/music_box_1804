class Song < ApplicationRecord
  validates_presence_of :title, :length, :play_count
  has_many :playlist_songs
  belongs_to :artist
  has_many :playlists, through: :playlist_songs

end
