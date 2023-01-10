class SearchFacade
    def self.find_activity(participants)
        json = SearchService.get_activity(participants)
            Search.new(json)
    end
end