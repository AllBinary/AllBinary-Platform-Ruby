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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/GameAdState"
require "org/allbinary/logic/system/SoftwareInformation"
require "org/allbinary/business/advertisement/AppNameLicensingAdConfiguration"
require "org/allbinary/business/advertisement/GameAdStateBase"

class GameAdStateFactory
    @@instance = GameAdStateFactory.new()
end

