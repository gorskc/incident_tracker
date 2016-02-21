require 'rails_helper'

RSpec.feature 'Edit an injury', type: :feature do
    scenario 'Updates valid values and saves injury' do
        incident = FactoryGirl.create(:incident)
        injury = incident.injuries.create!(injury_type: 'Scratch/abrasion', affected_body_part: 'Right knee', treatment: 'First aid')
        
        visit incident_path(incident)
        
        click_link 'Edit Injury'
        
        expect(current_path).to eq(edit_incident_injury_path(incident))
        
        fill_in 'injury_type', with: 'Scratch/abrasion'
        click_button 'Update Injury'
        
        expect(current_path).to eq(incident_injury_path(incident))
        expect(page).to have_content('Updated Injury')
    end
end    
