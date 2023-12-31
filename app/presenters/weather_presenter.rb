class WeatherPresenter
    def initialize(data)
        @data = data
    end 

    def encourage_text
        if good_to_read_outside?
            "Get some snacks and go read a book in a park!"
        else    
            "It's always a good weather to read a book!"
        end
    end

    def icon
        data['current']['condition']['icon']
    end

    def description
        data['current']['condition']['text']
    end
    
    def temperature
        data['current']['temp_c']
    end

    private 

    attr_reader :data

    def nice_weather?
        description = 'Sunny' || description = 'Partly Cloudy'
    end

    def good_to_read_outside?
        nice_weather? && temperature > 15
    end
end