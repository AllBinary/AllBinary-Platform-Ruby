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


module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic; module Notification

class GameNotification
    attr_accessor :stringList, :timeList, :colorList

    def jfields_org_allbinary_game_ag_layer_hud_basic_notification_GameNotification
        @stringList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @timeList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @colorList = ::Org::Allbinary::Util::BasicArrayListD.new()
    end

    def initialize
        jfields_org_allbinary_game_ag_layer_hud_basic_notification_GameNotification
    end
    

    def add(string, seconds, basicColor)
        if !@stringList.contains(string)
            @stringList.add(string)
            @timeList.add(seconds)
            @colorList.add(basicColor)
        end
    end
    

    def clear()
        @stringList.clear()
        @timeList.clear()
        @colorList.clear()
    end
    

    def getSize()
        return @stringList.size()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_GAME_NOTIFICATION_EVENT, ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEvent.new(::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, 0, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().RED, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameNotification"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_GAME_NOTIFICATION_EVENT].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEvent, "org/allbinary/game/layer/hud/event/GameNotificationEvent" unless const_defined?(:GameNotificationEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

begin
    GameNotification.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

