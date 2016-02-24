require 'rails_helper'

RSpec.feature 'Creating a corrective action', type: :feature do
    before do
        @user = FactoryGirl.create(:user)
        sign_in(@user)
    end
    scenario 'succeeds with valid values' do
        incident = FactoryGirl.create(:incident)
        
        visit incident_path(incident)
        click_link 'Add Corrective Action'
        
        expect(current_path).to eq(new_incident_corrective_action_path(incident))
        expect(page).to have_content(incident.date_of_incident)
        
        fill_in 'Action', with: 'Fix crack in pavement'
        fill_in 'corrective_action_expected_completion_date', with: '2016-03-03'
        fill_in 'corrective_action_actual_completion_date', with: '2016-02-28'
        check 'Complete'
        click_button 'Create Corrective action'
        
        expect(current_path).to eq(incident_corrective_actions_path(incident))
        expect(page).to have_content('Fix crack in pavement')
        expect(page).to have_content('2016-03-03')
        expect(page).to have_content('2016-02-28')
    end
    
end