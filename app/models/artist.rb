class Artist < ApplicationRecord
    # activerecord association
    has_many :songs

    def average_song_length
        # self.songs gives all of an artists songs
        # we tell which column we want to average (:length)
        self.songs.average(:length)
    end 
end 