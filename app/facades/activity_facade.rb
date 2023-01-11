class ActivityFacade
    def self.find_activity(participants)
        json = ActivityService.get_activity(participants)
            Activity.new(json) #change to activity? 
    end
end