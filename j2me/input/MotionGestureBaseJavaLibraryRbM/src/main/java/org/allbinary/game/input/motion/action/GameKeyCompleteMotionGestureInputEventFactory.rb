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
# package org.allbinary.game.input.motion.action


class GameKeyCompleteMotionGestureInputEventFactory
    attr_accessor :logUtil, :eventList

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @eventList = BasicArrayListD.new()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GameKeyCompleteMotionGestureInputEventFactory::SINGLETON
    end
    

    def add(gameKeyCompleteMotionGestureInputEvent)
        @eventList.add(gameKeyCompleteMotionGestureInputEvent)
    end
    

    def updateAll()
        @logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).appendint(@eventList.size()).to_s, self, "updateAll")
        (@eventList.size() - 1).step(0, -(1)) do |index|
            gameKeyCompleteMotionGestureInputEvent = @eventList.objectArray[index]
            gameKeyCompleteMotionGestureInputEvent.update()
        end
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, GameKeyCompleteMotionGestureInputEventFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameKeyCompleteMotionGestureInputEventFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :GameKeyCompleteMotionGestureInputEvent, "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent"

begin
    GameKeyCompleteMotionGestureInputEventFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

