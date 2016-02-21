class Injury < ActiveRecord::Base
    belongs_to :incident
    
    validates :injury_type, presence: true
end