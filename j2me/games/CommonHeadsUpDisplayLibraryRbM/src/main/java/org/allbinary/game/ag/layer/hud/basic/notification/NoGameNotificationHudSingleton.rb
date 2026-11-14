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

require "org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud"

class NoGameNotificationHudSingleton
    attr_accessor :logUtil, :gameNotificationHud
    class NoGameGameNotificationHud < GameNotificationHud
        

        def initialize()
            super(BasicHudFactory.getInstance().TOPCENTER, BasicHudFactory.getInstance().HORIZONTAL, 2, BasicColorFactory.getInstance().RED)
            @updateMaxWidth = 40
            @updateMaxHeight = 14
        end
    end

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @gameNotificationHud = GameNotificationHud::NULL_GAME_NOTIFICATION
    end
    

    def self.getInstance()
        return NoGameNotificationHudSingleton.instance
    end
    

    def initialize()
        initialize_fields
        begin
            basicHudFactory = BasicHudFactory.getInstance()
            @gameNotificationHud = NoGameGameNotificationHud.new()
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
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

autoload :BasicHudFactory, "org/allbinary/game/graphics/hud/BasicHudFactory"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    NoGameNotificationHudSingleton.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

