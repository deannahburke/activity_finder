class ActivityController < ApplicationController
    def index
        @activity = ActivityFacade.find_activity(params[:num_participants])
        if params[:num_participants].to_i <= 0 || params[:num_participants].to_i > 5
            redirect_to root_path
            flash[:alert] = "There are no activities for that number of participants"
        end 
        #dynamic!  if API changes parameters for valid number of participants, this logic accounts for this by rendering activity participants nil no matter what the number constraint is per the external API
        #@activity = ActivityFacade.find_activity(params[:num_participants])
        # if @activity.participants == nil
        #     redirect_to root_path
        #     flash[:alert] = “no activities for that number of participants”
    end
end