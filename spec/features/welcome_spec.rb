require 'rails_helper'

RSpec.describe "Welcome Page" do 
    it 'has a form to search for activities' do 
        visit root_path
        
        expect(page).to have_content("Activity Finder")
        expect(page).to have_field(:num_participants)
        expect(page).to have_button("Find Activities")
    end 

    it 'flashes error message when API returns no activity for negative number of participants' do 
        visit root_path

        fill_in :num_participants, with: (-2)
        click_button "Find Activities"

        expect(current_path).to eq(root_path)
        expect(page).to have_content("There are no activities for that number of participants")
    end

    it 'flashes error message when API returns no activity for high number of participants' do 
        visit root_path

        fill_in :num_participants, with: (6)
        click_button "Find Activities"

        expect(current_path).to eq(root_path)
        expect(page).to have_content("There are no activities for that number of participants")
    end
    
end 