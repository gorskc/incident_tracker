require 'rails_helper'

RSpec.describe Incident, type: :model do
    before(:all) do
      @incident1 = FactoryGirl.build(:incident)
    end
    
    it 'has a valid factory' do
      expect(@incident1).to be_valid
    end
    
    it { is_expected.to have_db_column(:first_name) }
    
    it { is_expected.to have_db_column(:last_name) }
    
    it { is_expected.to have_db_column(:department) }
    
    it { is_expected.to have_db_column(:job_title) }
    
    it { is_expected.to have_db_column(:date_of_hire) }
    
    it { is_expected.to have_db_column(:description) }
    
    it { is_expected.to have_db_column(:date_of_incident) }
    
    it { is_expected.to have_db_column(:date_reported) }
    
    it { is_expected.to have_db_column(:location_of_incident) }
    
    it { is_expected.to have_db_column(:affected_body_part) }
    
    it { is_expected.to have_db_column(:type_of_injury) }
    
    it { is_expected.to have_db_column(:type_of_incident) }
    
    it { is_expected.to have_db_column(:treatment) }
    
    it { is_expected.to have_db_column(:property_damage) }
  
    it { is_expected.to have_db_column(:supervisor_last_name) }
    
    it { is_expected.to have_db_column(:supervisor_last_name) }
    
    it { is_expected.to have_db_column(:suggested_corrective_action) }
    
    it { is_expected.to have_many(:injuries) }
    it { is_expected.to have_many(:corrective_actions) }
    
    it { is_expected.to validate_presence_of(:date_of_incident) }
end
