require 'rails_helper'

RSpec.describe CorrectiveAction, type: :model do 
  it 'belongs to an incident' do 
    incident = FactoryGirl.create(:incident)
    corrective_action = incident.corrective_actions.build(
        action: 'Provide training in bloodborne pathogens for employee', 
        expected_completion_date: '03-03-2016', 
        actual_completion_date: '02-19-2016', 
        complete: true)
        
    expect(corrective_action.incident).to eq(incident)
  end
  
  it { is_expected.to have_db_column(:action) }
  it { is_expected.to have_db_column(:expected_completion_date) }
  it { is_expected.to have_db_column(:actual_completion_date) }
  it { is_expected.to have_db_column(:complete) }
  
  it { is_expected.to validate_presence_of(:action) }
end