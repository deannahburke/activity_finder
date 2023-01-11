require 'rails_helper'

RSpec.describe ActivityFacade do 
    it 'creates Activity poro from get activity service call' do 
        activity = ActivityFacade.find_activity(5)

        expect(activity).to be_an_instance_of(Activity)
    end
end