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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_ANALOG_LOCATION_INPUT, AnalogLocationInput.new(-1))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AnalogLocationInput"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_ANALOG_LOCATION_INPUT].include?(name)
        end
        super
    end
end

autoload :CustomGPoint, "org/allbinary/graphics/CustomGPoint"

begin
    AnalogLocationInput.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

