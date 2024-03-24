class Player < ApplicationRecord
    has_many :teams
    has_many :games
    has_many :stats
    
end
