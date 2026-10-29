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


class GameNotification
    attr_accessor :stringList, :timeList, :colorList

    def initialize_fields
        @stringList = BasicArrayListD.new()
        @timeList = BasicArrayListD.new()
        @colorList = BasicArrayListD.new()
    end

    def initialize
        initialize_fields
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
end

require "org/allbinary/game/layer/hud/event/GameNotificationEvent"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class GameNotification
    NULL_GAME_NOTIFICATION_EVENT = GameNotificationEvent.new(NullUtil.getInstance().NULL_OBJECT, StringUtil.getInstance().EMPTY_STRING, 0, BasicColorFactory.getInstance().RED, BooleanFactory.getInstance().FALSE)
end

