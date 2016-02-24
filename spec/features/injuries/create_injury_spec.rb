require 'rails_helper'

RSpec.feature 'Creating an injury', type: :feature do
    before do
        @user = FactoryGirl.create(:user)
        sign_in(@user)
    end
    scenario 'saves the injury if it is valid and displays it on the incident page' do
        incident = FactoryGirl.create(:incident)
        
        visit incident_path(incident)
        click_link 'Add Injury'
        
        expect(current_path).to eq(new_incident_injury_path(incident))
        expect(page).to have_content(incident.date_of_incident)
        
        fill_in 'Injury type', with: 'Sprain/strain'
        fill_in 'Affected body part', with: 'Right knee'
        fill_in 'Treatment', with: 'First aid'
        click_button 'Create Injury'
        #Need to remove 'affected_body_part' and 'treatment', move to 'injury data'
        
        expect(current_path).to eq(incident_injuries_path(incident))
        expect(page).to have_content('Sprain/strain')
        expect(page).to have_content('Right knee')
        expect(page).to have_content('First aid')
    end
        
    
end