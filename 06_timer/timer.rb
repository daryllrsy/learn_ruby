class Timer
    def initialize()
        @seconds = 0
    end

    def seconds=(seconds)
        @seconds = seconds
    end

    def seconds
        @seconds
    end

    def time_string
        def padded(number)
            if number < 10
                return "0#{number}"
            else
                return number.to_s
            end
        end

        time = @seconds

        hrs = time / 3600
        time = time % 3600

        min = time / 60
        time = time % 60

        return "#{padded(hrs)}:#{padded(min)}:#{padded(time)}"
    end
end