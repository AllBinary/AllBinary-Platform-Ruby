# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input.analog


class AnalogLocationInputFactory
    attr_accessor :list

    def initialize_fields
        @list = BasicArrayListD.new()
    end
    

    def self.getInstance()
        return AnalogLocationInputFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def addPlayer(playerInputId)
        analogLocationInput = AnalogLocationInput::NULL_ANALOG_LOCATION_INPUT
        if playerInputId < @list.size()
            analogLocationInput = @list.get(playerInputId)
        end
        if analogLocationInput == AnalogLocationInput::NULL_ANALOG_LOCATION_INPUT
            analogLocationInput = AnalogLocationInput.new(playerInputId)
            @list.add(analogLocationInput)
        end
    end
    

    def getInstanceForPlayer(playerInputId)
        return @list.get(playerInputId)
    end
    

    def getList()
        return @list
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/input/analog/AnalogLocationInput"

class AnalogLocationInputFactory
    @@instance = AnalogLocationInputFactory.new()
end

