require 'rails_helper'

RSpec.feature 'Viewing an incident', type: :feature do
    scenario 'Shows the incident details' do
        incident = FactoryGirl.create(:incident)
        
        visit incident_url(incident)
        
        expect(page).to have_content(incident.first_name)
        expect(page).to have_content(incident.last_name)
        expect(page).to have_content(incident.department)
        expect(page).to have_content(incident.job_title)
        expect(page).to have_content(incident.date_of_hire)
        expect(page).to have_content(incident.description)
        expect(page).to have_content(incident.date_of_incident)
        expect(page).to have_content(incident.date_reported)
        expect(page).to have_content(incident.location_of_incident)
        expect(page).to have_content(incident.affected_body_part)
        expect(page).to have_content(incident.type_of_injury)
        expect(page).to have_content(incident.type_of_incident)
        expect(page).to have_content(incident.treatment)
        expect(page).to have_content(incident.property_damage)
        expect(page).to have_content(incident.supervisor_last_name)
        expect(page).to have_content(incident.supervisor_first_name)
        expect(page).to have_content(incident.suggested_corrective_action)
    end
    
    context 'with related data' do
        before(:all) do
            @incident1 = FactoryGirl.create(:incident)
            @incident2 = FactoryGirl.create(:incident)
            @incident3 = FactoryGirl.create(:incident)
        end
    end
end