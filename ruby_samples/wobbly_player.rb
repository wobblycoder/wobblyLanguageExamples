class WobblyPlayer

    def initialize
        @name = "Generic player"
        @health = 100
        @room = 0
        @loc_x = 0
        @loc_y = 0
        puts "made a player"
    end

    def name=(aName)
        @name = aName
    end

    def health=(aPercent)
        @health = aPercent
    end

    def room=(aNumber)
        @room = aNumber
    end

    def loc_x=(aNumber)
        @loc_x = aNumber
    end

    def loc_y=(aNumber)
        @loc_y = aNumber
    end

    def moves_left
        @loc_x = @loc_x + 1
    end

    def takes_damage(aNumber)
        if @health <= aNumber
            @health = 0
        else
            @health = @health - aNumber
        end
    end

    def status 
        "#{@name} is in room #{@room} at (#{@loc_x}, #{@loc_y}) with #{@health}% health"
    end        
end

