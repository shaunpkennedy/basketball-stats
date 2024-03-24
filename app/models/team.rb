class Team < ApplicationRecord
    belongs_to :player
    has_many :games    
end
