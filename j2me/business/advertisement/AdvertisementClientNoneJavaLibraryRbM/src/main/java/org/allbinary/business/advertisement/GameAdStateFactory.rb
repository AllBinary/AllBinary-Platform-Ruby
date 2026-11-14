# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.business.advertisement

require "org/allbinary/business/advertisement/GameAdStateFactoryInterface"

class GameAdStateFactory
    include GameAdStateFactoryInterface
    attr_accessor :gameAdStateArray, :gameAdState

    def initialize_fields
        @gameAdStateArray = [GameAdState.new(AppNameLicensingAdConfiguration.new())]
        @gameAdState = @gameAdStateArray[0]
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GameAdStateFactory.instance
    end
    

    def getCurrentInstance()
        return @gameAdState
    end
    

    # throws Exception
    def getInstanceForApp(softwareInformation)
        @gameAdState = @gameAdStateArray[0]
        return @gameAdStateArray[0]
    end
    

    def isEnabled()
        return false
    end

    def self.instance()
        GameAdStateFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameAdStateFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GameAdStateFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameAdStateFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :GameAdState, "org/allbinary/game/GameAdState"
autoload :SoftwareInformation, "org/allbinary/logic/system/SoftwareInformation"
autoload :AppNameLicensingAdConfiguration, "org/allbinary/business/advertisement/AppNameLicensingAdConfiguration"
autoload :GameAdStateBase, "org/allbinary/business/advertisement/GameAdStateBase"

begin
    GameAdStateFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

