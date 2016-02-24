class Incident < ActiveRecord::Base
    has_many :injuries, dependent: :destroy
    has_many :corrective_actions
    
    validates_presence_of :date_of_incident
end