#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.system.security.licensing


class LockedFeatureNotificationUtil
    attr_accessor :gameNotificationEvent

    def initialize_fields
        @gameNotificationEvent = GameNotificationEvent.new(self, LicenseStrings.getInstance().LOCKED, SmallIntegerSingletonFactory.getInstance().getAt(3), BasicColorFactory.getInstance().RED, BooleanFactory.getInstance().FALSE)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return LockedFeatureNotificationUtil.instance
    end
    

    # throws Exception
    def fire()
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance())
        GameNotificationEventHandler.getInstance().fireEvent(@gameNotificationEvent)
    end
    

    # throws Exception
    def fireWithColor(basicColor)
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance())
        @gameNotificationEvent.setBasicColorP(basicColor)
        GameNotificationEventHandler.getInstance().fireEvent(@gameNotificationEvent)
    end

    def self.instance()
        LockedFeatureNotificationUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LockedFeatureNotificationUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LockedFeatureNotificationUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LockedFeatureNotificationUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :GameNotificationEvent, "org/allbinary/game/layer/hud/event/GameNotificationEvent"
autoload :GameNotificationEventHandler, "org/allbinary/game/layer/hud/event/GameNotificationEventHandler"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"
autoload :ErrorSound, "org/allbinary/media/audio/ErrorSound"
autoload :PrimaryPlayerQueueFactory, "org/allbinary/media/audio/PrimaryPlayerQueueFactory"
autoload :LicenseStrings, "org/allbinary/logic/system/security/licensing/LicenseStrings"

begin
    LockedFeatureNotificationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

