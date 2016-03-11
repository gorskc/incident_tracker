require 'rails_helper'

RSpec.feature 'Editing an incident', type: :feature do
    before do
        @user = FactoryGirl.create(:user)
        sign_in(@user)
    end
    scenario 'updates the incident and shows the incident updated details' do
        incident = FactoryGirl.create(:incident)
        
        visit '/incidents'
        
        click_link 'Edit Incident'
        
        expect(current_path).to eq(edit_incident_path(incident))
        expect(find_field('Date of Incident').value.to_date).to eq(incident.date_of_incident)
        
        fill_in 'Date of Incident', with: 'Updated Incident Date of Incident'
        
        click_button 'Update Incident'
        
        expect(current_path).to eq(incident_path(incident))
        expect(page).to have_content('Incident successfully updated')
    end
end