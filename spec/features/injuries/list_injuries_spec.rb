require 'rails_helper'

RSpec.feature 'Showing a list of injuries for an incident' do 
  before do
        @user = FactoryGirl.create(:user)
        sign_in(@user)
  end
  scenario 'displays the injuries' do 
    incident = FactoryGirl.create(:incident)
    injury1 = incident.injuries.create(injury_type: 'Cut/laceration', affected_body_part: 'Left hand', treatment: 'First aid')
    injury2 = incident.injuries.create(injury_type: 'Nip/pinch', affected_body_part: 'Right index finger', treatment: 'First aid')
    
    visit incident_injuries_path(incident)
    
    expect(page).to have_content(injury1.injury_type)
    expect(page).to have_content(injury2.injury_type)
    expect(page).to have_content(injury1.affected_body_part)
    expect(page).to have_content(injury2.affected_body_part)
    expect(page).to have_content(injury1.treatment)
    expect(page).to have_content(injury2.treatment)
  end

end