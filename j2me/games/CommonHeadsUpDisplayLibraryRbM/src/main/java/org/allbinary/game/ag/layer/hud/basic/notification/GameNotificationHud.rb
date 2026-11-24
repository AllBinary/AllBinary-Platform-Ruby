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

require "java/lang/JavaOverload"
require "org/allbinary/game/graphics/hud/BasicHud"
require "org/allbinary/game/layer/hud/event/GameNotificationListenerInterface"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic; module Notification

class GameNotificationHud < ::Org::Allbinary::Game::Graphics::Hud::BasicHud
    include ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationListenerInterface
    attr_accessor :METHOD_NAME, :lastGameNotificationEvent

    def jfields_org_allbinary_game_ag_layer_hud_basic_notification_GameNotificationHud
        @METHOD_NAME = "onGameNotificationEvent"
        @lastGameNotificationEvent = GameNotification::NULL_GAME_NOTIFICATION_EVENT
    end
    

    def initialize(location, direction, bufferZone, basicColor)
        super(location, direction, bufferZone, basicColor)
        jfields_org_allbinary_game_ag_layer_hud_basic_notification_GameNotificationHud
    end
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    # throws Exception
    def onGameNotificationEvent(gameNotificationEvent)
        if @lastGameNotificationEvent != gameNotificationEvent
            @lastGameNotificationEvent = gameNotificationEvent
            @logUtil.putF(gameNotificationEvent.getString(), self, @METHOD_NAME)
        end
        self.add(gameNotificationEvent.getString(), gameNotificationEvent.getSeconds(), gameNotificationEvent.getBasicColorP(), gameNotificationEvent.getPermanent())
    end
    java_overload :onGameNotificationEvent, 1
    

    def add(string, seconds, basicColor, permanent)
    end
    java_overload :add, 4
    

    # throws Exception
    def processTick()
    end
    java_overload :processTick, 0
    

    def paint(graphics)
    end
    java_overload :paint, 1
    

    def clear()
    end
    java_overload :clear, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_GAME_NOTIFICATION, GameNotificationHud.new(::Org::Allbinary::Game::Graphics::Hud::BasicHudFactory.getInstance().TOPCENTER, ::Org::Allbinary::Game::Graphics::Hud::BasicHudFactory.getInstance().HORIZONTAL, 0, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().RED))
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

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Graphics; module Hud; autoload :BasicHudFactory, "org/allbinary/game/graphics/hud/BasicHudFactory" unless const_defined?(:BasicHudFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEvent, "org/allbinary/game/layer/hud/event/GameNotificationEvent" unless const_defined?(:GameNotificationEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
autoload :GameNotification, "org/allbinary/game/ag/layer/hud/basic/notification/GameNotification" unless const_defined?(:GameNotification, false)

begin
    GameNotificationHud.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

