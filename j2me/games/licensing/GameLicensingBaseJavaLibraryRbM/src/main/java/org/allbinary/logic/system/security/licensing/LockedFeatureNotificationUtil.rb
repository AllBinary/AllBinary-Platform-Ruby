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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/hud/event/GameNotificationEvent"
require "org/allbinary/game/layer/hud/event/GameNotificationEventHandler"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/media/audio/ErrorSound"
require "org/allbinary/media/audio/PrimaryPlayerQueueFactory"
require "org/allbinary/logic/system/security/licensing/LicenseStrings"

class LockedFeatureNotificationUtil
    @@instance = LockedFeatureNotificationUtil.new()
end

