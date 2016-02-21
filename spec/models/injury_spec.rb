require 'rails_helper'

RSpec.describe Injury, type: :model do 
  it 'belongs to an incident' do 
    incident = FactoryGirl.create(:incident)
    injury = incident.injuries.build(
        injury_type: 'Test injury', 
        affected_body_part: 'Right knee',
        treatment: 'First aid')
    
    expect(injury.incident).to eq(incident)
  end
  
  it { is_expected.to have_db_column(:injury_type) }
  it { is_expected.to have_db_column(:affected_body_part) }
  it { is_expected.to have_db_column(:treatment) }
  
  it { is_expected.to validate_presence_of(:injury_type) }
end