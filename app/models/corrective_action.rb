class CorrectiveAction < ActiveRecord::Base
    belongs_to :incident
    
    validates :action, presence: true
    validates :expected_completion_date, presence: true
end