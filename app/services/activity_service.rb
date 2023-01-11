class ActivityService
    def self.get_activity(participants)
        conn = Faraday.new(url: "http://www.boredapi.com/api/activity")
        response = conn.get("?participants=#{participants}")
        json = JSON.parse(response.body, symbolize_names: true)
    end
end