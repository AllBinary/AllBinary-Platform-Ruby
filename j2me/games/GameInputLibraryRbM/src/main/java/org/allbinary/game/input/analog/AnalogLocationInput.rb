# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input.analog


class AnalogLocationInput
    attr_accessor :playerId, :customGPoint, :rz, :rightTrigger, :leftTrigger

    def initialize_fields
        @playerId = nil
        @customGPoint = nil
        @rz = 0
        @rightTrigger = 0
        @leftTrigger = 0
    end
    

    def initialize(playerId)
        initialize_fields
        @playerId = playerId
        @customGPoint = CustomGPoint.new(0, 0, 0)
    end
    

    def getPlayerId()
        return @playerId
    end
    

    def getCustomGPoint()
        return @customGPoint
    end
    

    def getRz()
        return @rz
    end
    

    def setRz(rz)
        @rz = rz
    end
    

    def getRightTrigger()
        return @rightTrigger
    end
    

    def setRightTrigger(rightTrigger)
        @rightTrigger = rightTrigger
    end
    

    def getLeftTrigger()
        return @leftTrigger
    end
    

    def setLeftTrigger(leftTrigger)
        @leftTrigger = leftTrigger
    end
end

require "org/allbinary/graphics/CustomGPoint"

class AnalogLocationInput
    NULL_ANALOG_LOCATION_INPUT = AnalogLocationInput.new(-1)
end

