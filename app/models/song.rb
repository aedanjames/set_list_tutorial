class Song < ApplicationRecord
    # activerecord association
    belongs_to :artist
end 