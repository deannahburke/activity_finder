require 'rails_helper'

RSpec.describe ActivityService do 
    it 'external api get request is successful' do 
        activities = ActivityService.get_activity(3)

        expect(activities).to be_a Hash
        expect(activities).to have_key(:activity)
        expect(activities).to have_key(:participants)
        expect(activities).to have_key(:price)
        expect(activities[:participants]).to eq(3)
    end
end