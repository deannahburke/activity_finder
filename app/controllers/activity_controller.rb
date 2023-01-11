class ActivityController < ApplicationController
    def index
        @activity = ActivityFacade.find_activity(params[:num_participants])
    end
end