require 'rails_helper'

RSpec.describe Incident, type: :model do
    before(:all) do
      @incident1 = FactoryGirl.build(:incident)
    end
           #first_name: 'Employee First Name',
           #last_name: 'Employee Last Name',
           #department: 'Test Department',
           #job_title: 'Job',
           #date_of_hire: '2011-03-01',
           #description: 'test injury',
           #date_of_incident: '2016-02-02',
           #date_reported: '2016-02-02',
           #location_of_incident: 'Test location',
           #affected_body_part: 'Test body part',
           #type_of_injury: 'Test injury',
           #type_of_incident: 'Test injury',
           #treatment: 'Test Treatment',
           #property_damage: 'Some damage',
           #supervisor_last_name: 'Test Name',
           #supervisor_first_name: 'Test Name',
           #suggested_corrective_action: 'Test fix'
    
    
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
end
