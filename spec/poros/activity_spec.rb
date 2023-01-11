require 'rails_helper'

RSpec.describe Activity do 
    it 'is an object' do 
        response = File.read('spec/fixtures/activities.json')
        json = JSON.parse(response, symbolize_names: true)
        activity = Activity.new(json)

        expect(activity).to be_a Activity
        expect(activity.description).to eq("Have a jam session with your friends")
        expect(activity.participants).to eq(5)
        expect(activity.price).to eq(0.1)
    end
end