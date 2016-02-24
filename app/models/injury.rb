class Injury < ActiveRecord::Base
    belongs_to :incident
    
    validates :injury_type, presence: true
    validates :affected_body_part, presence: true
    validates :treatment, presence: true
end