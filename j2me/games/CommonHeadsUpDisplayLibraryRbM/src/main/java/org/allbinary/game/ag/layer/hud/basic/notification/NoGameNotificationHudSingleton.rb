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

class NoGameNotificationHudSingleton
    attr_accessor :logUtil, :gameNotificationHud

    def jfields_org_allbinary_game_ag_layer_hud_basic_notification_NoGameNotificationHudSingleton
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @gameNotificationHud = GameNotificationHud::NULL_GAME_NOTIFICATION
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_game_ag_layer_hud_basic_notification_NoGameNotificationHudSingleton
        begin
            basicHudFactory = ::Org::Allbinary::Game::Graphics::Hud::BasicHudFactory.getInstance()
            @gameNotificationHud = NoGameGameNotificationHud.new()
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
    end
    

    def getGameNotificationHud()
        return @gameNotificationHud
    end

    def self.instance()
        NoGameNotificationHudSingleton.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        NoGameNotificationHudSingleton.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = NoGameNotificationHudSingleton.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NoGameNotificationHudSingleton"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Graphics; module Hud; autoload :BasicHudFactory, "org/allbinary/game/graphics/hud/BasicHudFactory" unless const_defined?(:BasicHudFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :GameNotificationHud, "org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud" unless const_defined?(:GameNotificationHud, false)
autoload :NoGameGameNotificationHud, "org/allbinary/game/ag/layer/hud/basic/notification/NoGameGameNotificationHud" unless const_defined?(:NoGameGameNotificationHud, false)

begin
    NoGameNotificationHudSingleton.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

