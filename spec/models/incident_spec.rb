require 'rails_helper'

RSpec.describe 'Incident', type: :model do
    before(:each) do
        @incident1 = Incident.new(
            first_name: 'Employee First Name',
            last_name: 'Employee Last Name',
            department: 'Test Department',
            job_title: 'Job',
            date_of_hire: '2011-03-01',
            description: 'test injury',
            date_of_incident: '2016-02-02',
            date_reported: '2016-02-02',
            location_of_incident: 'Test location',
            affected_body_part: 'Test body part',
            type_of_injury: 'Test injury',
            type_of_incident: 'Test injury',
            treatment: 'Test Treatment',
            property_damage: 'Some damage',
            supervisor_last_name: 'Test Name',
            supervisor_first_name: 'Test Name',
            suggested_corrective_action: 'Test fix')
    end
  it 'should have a first_name field' do
  expect(@incident1.first_name).to eq('Employee First Name')
  end
  it 'should have a last_name field' do
  expect(@incident1.last_name).to eq('Employee Last Name')
  end
  it 'should have a department' do
    expect(@incident1.department).to eq('Test Department')
  end
  it 'should have a job_title' do
    expect(@incident1.job_title).to eq('Job')
  end
  it 'should have a date_of_hire' do
    expect(@incident1.date_of_hire).to eq('2011-03-01')
  end
  it 'should have a description' do
    expect(@incident1.description).to eq('test injury')
  end
  it 'should have a date_of_incident' do
    expect(@incident1.date_of_incident).to eq('2016-02-02')
  end
  it 'should have a date_reported' do
    expect(@incident1.date_reported).to eq('2016-02-02')
  end
  it 'should have a location_of_incident' do
    expect(@incident1.location_of_incident).to eq('Test location')
  end
  it 'should have a affected_body_part' do
    expect(@incident1.affected_body_part).to eq('Test body part')
  end
  it 'should have a type_of_injury' do
    expect(@incident1.type_of_injury).to eq('Test injury')
  end
  it 'should have a type_of_incident' do
    expect(@incident1.type_of_incident).to eq('Test injury')
  end
  it 'should have a treatment' do
    expect(@incident1.treatment).to eq('Test Treatment')
  end
  it 'should have a property_damage' do
    expect(@incident1.property_damage).to eq('Some damage')
  end
  it 'should have a supervisor_last_name' do
    expect(@incident1.supervisor_last_name).to eq('Test Name')
  end
  it 'should have a supervisor_first_name' do
    expect(@incident1.supervisor_first_name).to eq('Test Name')
  end
  it 'should have a suggested_corrective_action' do
    expect(@incident1.suggested_corrective_action).to eq('Test fix')
  end
end