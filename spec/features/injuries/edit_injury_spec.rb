require 'rails_helper'

RSpec.feature 'Edit an injury', type: :feature do
    before do
        @user = FactoryGirl.create(:user)
        sign_in(@user)
    end
    scenario 'Updates valid values and saves injury' do
        incident = FactoryGirl.create(:incident)
        injury = incident.injuries.create!(injury_type: 'Scratch/abrasion', affected_body_part: 'Right knee', treatment: 'First aid')
        
        visit incident_path(incident)
        
        click_link 'Edit Injury'
        
        #expect(current_path).to eq(edit_incident_injury_path(incident))
        
        fill_in 'injury_injury_type', with: 'Scratch/abrasion'
        click_button 'Update Injury'
        
        expect(current_path).to eq(incident_injuries_path(incident))
        expect(page).to have_content('Injury updated')
    end
end    
