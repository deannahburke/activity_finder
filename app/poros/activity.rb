class Activity 
    attr_reader :description,
                :price,
                :participants 
                
    def initialize(data)
        @description = data[:activity]
        @price = data[:price]
        @participants = data[:participants]
    end
end