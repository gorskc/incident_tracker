require 'rails_helper'

RSpec.feature 'lists incident corrective actions' do
    before do
        @user = FactoryGirl.create(:user)
        sign_in(@user)
    end
    scenario 'displays the corrective actions' do
        incident = FactoryGirl.create(:incident)
        action1 = incident.corrective_actions.create(action: 'Provide training in bloodborne pathogens for employee', expected_completion_date: '03-03-2016', actual_completion_date: '02-19-2016', complete: true)
        action2 = incident.corrective_actions.create(action: 'Provide hand washing stations in work areas', expected_completion_date: '03-03-2016', actual_completion_date: '02-19-2016', complete: true)
       
    visit incident_corrective_actions_path(incident)
    #/incidents/:incident_id/injuries(.:format)
    
    expect(page).to have_content(action1.action)
    expect(page).to have_content(action2.action)
    expect(page).to have_content(action1.expected_completion_date)
    expect(page).to have_content(action2.expected_completion_date)
    expect(page).to have_content(action1.actual_completion_date)
    expect(page).to have_content(action2.actual_completion_date)
    expect(page).to have_content(action1.complete)
    expect(page).to have_content(action2.complete)
  end

end