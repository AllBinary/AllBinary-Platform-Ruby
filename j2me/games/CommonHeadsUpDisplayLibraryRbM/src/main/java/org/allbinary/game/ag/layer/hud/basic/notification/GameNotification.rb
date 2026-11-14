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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_GAME_NOTIFICATION_EVENT, GameNotificationEvent.new(NullUtil.getInstance().NULL_OBJECT, StringUtil.getInstance().EMPTY_STRING, 0, BasicColorFactory.getInstance().RED, BooleanFactory.getInstance().FALSE))
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

autoload :GameNotificationEvent, "org/allbinary/game/layer/hud/event/GameNotificationEvent"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"

begin
    GameNotification.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

