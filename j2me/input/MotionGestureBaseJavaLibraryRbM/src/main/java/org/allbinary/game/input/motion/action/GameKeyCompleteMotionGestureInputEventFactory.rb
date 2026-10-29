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
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent"

class GameKeyCompleteMotionGestureInputEventFactory
    SINGLETON = GameKeyCompleteMotionGestureInputEventFactory.new()
end

