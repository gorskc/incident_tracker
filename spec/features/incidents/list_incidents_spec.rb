require 'rails_helper'

RSpec.feature 'Listing all incidents', type: :feature do
  before do
        @user = FactoryGirl.create(:user)
        sign_in(@user)
  end
  scenario 'returns a message when there are no incidents to view' do
    visit '/'
    click_link 'Incidents'
        
    expect(current_url).to eq(incidents_url)
  end
  
  scenario 'displays the incidents' do
    incident1 = Incident.create!(
    first_name: 'Susan', 
    last_name: 'Johnson',
    department: 'Bioengineering',
    job_title: 'Research Scientist', 
    date_of_hire: '2010-11-25',
    description: 'I tripped over a crack in the side walk and scraped up my knee.', 
    date_of_incident: '2016-02-02',
    date_reported: '2016-02-02',
    location_of_incident: 'On the path north of the Health Sciences Building T-wing bridge before the bus stop',
    type_of_incident: 'First aid',
    property_damage: 'None',
    supervisor_last_name: 'Smith',
    supervisor_first_name: 'Sarah',
    suggested_corrective_action: 'Fix or remove crack in the pavement'
    )
    
    visit '/'
    click_link 'Incidents'
    
    expect(current_url).to eq(incidents_url)
    expect(page).to have_content('1 incident')
    expect(page).to have_content(incident1.first_name)
    expect(page).to have_content(incident1.last_name)
    expect(page).to have_content(incident1.department)
    expect(page).to have_content(incident1.job_title)
    expect(page).to have_content(incident1.date_of_hire)
    expect(page).to have_content(incident1.description)
    expect(page).to have_content(incident1.date_of_incident)
    expect(page).to have_content(incident1.date_reported)
    expect(page).to have_content(incident1.location_of_incident)
    expect(page).to have_content(incident1.type_of_incident)
    expect(page).to have_content(incident1.property_damage)
    expect(page).to have_content(incident1.supervisor_last_name)
    expect(page).to have_content(incident1.supervisor_first_name)
    expect(page).to have_content(incident1.suggested_corrective_action)
  end
  
end
