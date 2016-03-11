class Incident < ActiveRecord::Base
    has_many :injuries, dependent: :destroy
    has_many :corrective_actions, dependent: :destroy
    
    validates_presence_of :date_of_incident
end