class SearchController < ApplicationController
    def index
        @activity = SearchFacade.find_activity(params[:num_participants])
    end
end