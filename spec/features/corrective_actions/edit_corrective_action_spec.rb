require 'rails_helper'

RSpec.feature 'Edit a corrective action', type: :feature do
    before do
        @user = FactoryGirl.create(:user)
        sign_in(@user)
    end
    scenario 'Updates valid values and saves corrective action' do
        incident = FactoryGirl.create(:incident)
        
        corrective_action = incident.corrective_actions.create!(action: 'Buy safety glasses', expected_completion_date: '1/1/2016', actual_completion_date: '2/1/2016', complete: true)
        visit incident_corrective_actions_path(incident)
        
        click_link 'Edit Corrective Action'
        
        fill_in 'Action', with: 'Buy safety glasses'
        fill_in 'corrective_action_expected_completion_date', with: '1/1/2016'
        fill_in 'corrective_action_actual_completion_date', with: '2/1/2016'
        check 'Complete'
        
        click_button 'Update Corrective action'
        
        expect(current_path).to eq(incident_corrective_actions_path(incident))
        expect(page).to have_content('Buy safety glasses')
    end
    
end