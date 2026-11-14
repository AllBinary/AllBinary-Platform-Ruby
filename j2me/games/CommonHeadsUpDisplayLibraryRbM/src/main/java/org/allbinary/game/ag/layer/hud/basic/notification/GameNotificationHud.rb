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
# package org.allbinary.game.ag.layer.hud.basic.notification

require "org/allbinary/game/graphics/hud/BasicHud"
require "org/allbinary/game/layer/hud/event/GameNotificationListenerInterface"

class GameNotificationHud < BasicHud
    include GameNotificationListenerInterface
    attr_accessor :METHOD_NAME, :lastGameNotificationEvent

    def initialize_fields
        @METHOD_NAME = "onGameNotificationEvent"
        @lastGameNotificationEvent = GameNotification::NULL_GAME_NOTIFICATION_EVENT
    end
    

    def initialize(location, direction, bufferZone, basicColor)
        super(location, direction, bufferZone, basicColor)
        initialize_fields
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    # throws Exception
    def onGameNotificationEvent(gameNotificationEvent)
        if @lastGameNotificationEvent != gameNotificationEvent
            @lastGameNotificationEvent = gameNotificationEvent
            @logUtil.putF(gameNotificationEvent.getString(), self, @METHOD_NAME)
        end
        self.add(gameNotificationEvent.getString(), gameNotificationEvent.getSeconds(), gameNotificationEvent.getBasicColorP(), gameNotificationEvent.getPermanent())
    end
    

    def add(string, seconds, basicColor, permanent)
    end
    

    # throws Exception
    def processTick()
    end
    

    def paint(graphics)
    end
    

    def clear()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_GAME_NOTIFICATION, GameNotificationHud.new(BasicHudFactory.getInstance().TOPCENTER, BasicHudFactory.getInstance().HORIZONTAL, 0, BasicColorFactory.getInstance().RED))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameNotificationHud"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_GAME_NOTIFICATION].include?(name)
        end
        super
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :BasicHudFactory, "org/allbinary/game/graphics/hud/BasicHudFactory"
autoload :GameNotificationEvent, "org/allbinary/game/layer/hud/event/GameNotificationEvent"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"
autoload :GameNotification, "org/allbinary/game/ag/layer/hud/basic/notification/GameNotification"

begin
    GameNotificationHud.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

