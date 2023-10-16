class WeatherPresenter
    def initialize(data)
        @data = data
    end 

    def encourage_text
        if good_to_read_outside?
            "Good"
        else    
            "Bad"
        end
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