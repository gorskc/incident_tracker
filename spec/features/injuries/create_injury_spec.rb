require 'rails_helper'

RSpec.feature 'Creating an injury', type: :feature do
    scenario 'saves the injury if it is valid and displays it on the incident page' do
        incident = FactoryGirl.create(:incident)
        
        visit incident_url(incident)
        click_link 'Add Injury'
        
        expect(current_path).to eq(new_incident_injury_path(incident))
        
        fill_in 'Injury type', with: 'Sprain/strain'
        fill_in 'Affected body part', with: 'Right knee'
        fill_in 'Treatment', with: 'First aid'
        click_button 'Create Injury'
        #Need to remove 'affected_body_part' and 'treatment', move to 'injury data'
        
        expect(current_path).to eq(incident_injury_path(incident, Injury.last))
        expect(page).to have_content('Sprain/strain')
        expect(page).to have_content(Injury.last.injury_type)
    end

        
    
end