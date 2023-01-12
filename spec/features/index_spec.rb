require 'rails_helper'

RSpec.describe 'Activity Index page' do 
    it 'displays an activity' do 
        visit root_path
        fill_in :num_participants, with: 3 
        click_button "Find Activities"
        
        expect(current_path).to eq("/activity")
        expect(page).to have_content("Suggested Activity")
        expect(page).to have_content("Suggested number of participants:")
        expect(page).to have_content("Cost:")
        expect(page).to have_content("In USD:")
    end 
end