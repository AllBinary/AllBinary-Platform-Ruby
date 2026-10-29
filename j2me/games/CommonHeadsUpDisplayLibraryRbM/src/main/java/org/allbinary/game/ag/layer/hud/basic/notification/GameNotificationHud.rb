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

# require "javax/microedition/lcdui/Graphics"
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
end

require "org/allbinary/game/graphics/hud/BasicHudFactory"
require "org/allbinary/game/layer/hud/event/GameNotificationEvent"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/game/ag/layer/hud/basic/notification/GameNotification"

class GameNotificationHud
    NULL_GAME_NOTIFICATION = GameNotificationHud.new(BasicHudFactory.getInstance().TOPCENTER, BasicHudFactory.getInstance().HORIZONTAL, 0, BasicColorFactory.getInstance().RED)
end

