class ActivityController < ApplicationController
    def index
        @activity = ActivityFacade.find_activity(params[:num_participants])
        if params[:num_participants].to_i <= 0 || params[:num_participants].to_i > 5
            redirect_to root_path
            flash[:alert] = "There are no activities for that number of participants"
        end 
    end
end