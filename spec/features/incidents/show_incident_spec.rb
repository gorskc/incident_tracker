require 'rails_helper'

RSpec.feature 'Viewing an incident', type: :feature do
    before do
        @user = FactoryGirl.create(:user)
        sign_in(@user)
    end
    scenario 'Shows the incident details' do
        incident = FactoryGirl.create(:incident)
        
        visit incidents_path
        click_link 'Show Incident'
        expect(current_path).to eq(incident_path(incident))
        
        expect(page).to have_content(incident.first_name)
        expect(page).to have_content(incident.last_name)
        expect(page).to have_content(incident.department)
        expect(page).to have_content(incident.job_title)
        expect(page).to have_content(incident.date_of_hire)
        expect(page).to have_content(incident.description)
        expect(page).to have_content(incident.date_of_incident)
        expect(page).to have_content(incident.date_reported)
        expect(page).to have_content(incident.location_of_incident)
        expect(page).to have_content(incident.type_of_incident)
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
    
    scenario 'shows the incident injuries' do
      injury1 = @incident.injuries.create(injury_type: 'Sprain/strain', affected_body_part: 'Left ankle', treatment: 'First aid')
      
      visit incident_url(injury1)
      
      expect(page).to have_content('Task one')
      expect(page).to have_content('Task two')
      expect(page).to have_content('Task three')
    end
end