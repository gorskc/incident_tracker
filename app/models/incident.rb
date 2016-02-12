class Incident < ActiveRecord::Base
    validates_presence_of :date_of_incident
end