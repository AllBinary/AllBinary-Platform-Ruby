# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.business.advertisement

require "java/lang/JavaOverload"
require "org/allbinary/business/advertisement/GameAdStateFactoryInterface"

module ::Org; module Allbinary; module Business; module Advertisement

class GameAdStateFactory
    include GameAdStateFactoryInterface
    attr_accessor :gameAdStateArray, :gameAdState

    def jfields_org_allbinary_business_advertisement_GameAdStateFactory
        @gameAdStateArray = [::Org::Allbinary::Game::GameAdState.new(AppNameLicensingAdConfiguration.new())]
        @gameAdState = @gameAdStateArray[0]
    end

    def initialize
        jfields_org_allbinary_business_advertisement_GameAdStateFactory
    end
    

    def self.getInstance()
        return GameAdStateFactory.instance
    end
    

    def getCurrentInstance()
        return @gameAdState
    end
    java_overload :getCurrentInstance, 0
    

    # throws Exception
    def getInstanceForApp(softwareInformation)
        @gameAdState = @gameAdStateArray[0]
        return @gameAdStateArray[0]
    end
    java_overload :getInstanceForApp, 1
    

    def isEnabled()
        return false
    end
    java_overload :isEnabled, 0

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

module ::Org; module Allbinary; module Game; autoload :GameAdState, "org/allbinary/game/GameAdState" unless const_defined?(:GameAdState, false); end; end; end
module ::Org; module Allbinary; module Logic; module System; autoload :SoftwareInformation, "org/allbinary/logic/system/SoftwareInformation" unless const_defined?(:SoftwareInformation, false); end; end; end; end
autoload :AppNameLicensingAdConfiguration, "org/allbinary/business/advertisement/AppNameLicensingAdConfiguration" unless const_defined?(:AppNameLicensingAdConfiguration, false)
autoload :GameAdStateBase, "org/allbinary/business/advertisement/GameAdStateBase" unless const_defined?(:GameAdStateBase, false)

begin
    GameAdStateFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

