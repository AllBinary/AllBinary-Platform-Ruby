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
        AnalogLocationInputFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AnalogLocationInputFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AnalogLocationInputFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AnalogLocationInputFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :AnalogLocationInput, "org/allbinary/game/input/analog/AnalogLocationInput"

begin
    AnalogLocationInputFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

