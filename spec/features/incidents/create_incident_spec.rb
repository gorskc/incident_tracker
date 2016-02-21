require 'rails_helper'

RSpec.feature 'Creating a new incident', type: :feature do
    scenario 'succeeds with valid values' do
        visit '/incidents'
        click_link 'New Incident'
        
        expect(current_url).to eq(new_incident_url)
        
        fill_in 'incident_first_name', with: 'Test first name'
        fill_in 'incident_last_name', with: 'Test last name'
        fill_in 'incident_department', with: 'Test department'
        fill_in 'incident_job_title', with: 'Test job'
        fill_in 'incident_date_of_hire', with: '2011-03-01'
        fill_in 'incident_description', with: 'Test incident description'
        fill_in 'incident_date_of_incident', with: '2016-02-02'
        fill_in 'incident_date_reported', with: '2016-02-02'
        fill_in 'incident_location_of_incident', with: 'Test location'
        fill_in 'incident_affected_body_part', with: 'Test body part'
        fill_in 'incident_type_of_injury', with: 'Test injury'
        fill_in 'incident_type_of_incident', with: 'Test incident'
        fill_in 'incident_treatment', with: 'Test treatment'
        fill_in 'incident_property_damage', with: 'Test property damage'
        fill_in 'incident_supervisor_last_name', with: 'Test last name'
        fill_in 'incident_supervisor_first_name', with: 'Test first name'
        fill_in 'incident_suggested_corrective_action', with: 'Test fix'
        click_button 'Create Incident'
        
        expect(current_path).to eq(incident_path(Incident.last))
        expect(page).to have_content('2016-02-02')
        expect(page).to have_content('Incident successfully created')
    end
    
    scenario 'fails if date of incident is not provided' do
        visit '/incidents'
        click_link 'New Incident'
        
        expect(current_path).to eq(new_incident_path)
        
        #fill_in 'incident_first_name', with: 'Test first name'
        #fill_in 'incident_last_name', with: 'Test last name'
        #fill_in 'incident_department', with: 'Test department'
        #fill_in 'incident_job_title', with: 'Test job'
        #fill_in 'incident_date_of_hire', with: '2011-03-01'
        #fill_in 'incident_description', with: 'Test incident description'
        fill_in 'incident_date_of_incident', with: ''
        #fill_in 'incident_date_reported', with: '2016-02-02'
        #fill_in 'incident_location_of_incident', with: 'Test location'
        #fill_in 'incident_affected_body_part', with: 'Test body part'
        #fill_in 'incident_type_of_injury', with: 'Test injury'
        #fill_in 'incident_type_of_incident', with: 'Test incident'
        #fill_in 'incident_treatment', with: 'Test treatment'
        #fill_in 'incident_property_damage', with: 'Test property damage'
        #fill_in 'incident_supervisor_last_name', with: 'Test last name'
        #fill_in 'incident_supervisor_first_name', with: 'Test first name'
        #fill_in 'incident_suggested_corrective_action', with: 'Test fix'
        click_button 'Create Incident'
        
        expect(current_path).to eq(incidents_path)
        expect(page).to have_content("Error")
    end
end