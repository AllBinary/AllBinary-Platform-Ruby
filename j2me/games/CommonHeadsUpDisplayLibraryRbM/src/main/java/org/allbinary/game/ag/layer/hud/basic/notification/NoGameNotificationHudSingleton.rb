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
            class NoGameGameNotificationHud < GameNotificationHud
                

                def initialize()
                    super(@basicHudFactory.TOPCENTER, @basicHudFactory.HORIZONTAL, 2, BasicColorFactory.getInstance().RED)
                    @updateMaxWidth = 40
                    @updateMaxHeight = 14
                end
            end
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/graphics/hud/BasicHudFactory"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

class NoGameNotificationHudSingleton
    @@instance = NoGameNotificationHudSingleton.new()
end

