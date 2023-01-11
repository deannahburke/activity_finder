class Activity 
    attr_reader :activity,
                :price,
                :participants 
                
    def initialize(data)
        @activity = data[:activity]
        @price = data[:price]
        @participants = data[:participants]
    end
end