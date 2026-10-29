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
# package org.allbinary.game.input

require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/game/input/CompleteMotionGestureInputInterface"

class CompleteMotionGestureInputEvent < AllBinaryEventObject
    include CompleteMotionGestureInputInterface
    attr_accessor :logUtil, :name, :motionGestureInput

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @name = StringUtil.getInstance().EMPTY_STRING
        @motionGestureInput = TouchMotionGestureFactory.getInstance().NO_MOTION
    end
    

    def initialize(name, motionGestureInput)
        super(motionGestureInput)
        initialize_fields
        self.setName(name)
        begin
            self.setMotionGestureInput(motionGestureInput)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "InputToGameKeyEventAction", e)
        end
    end
    

    def setName(name)
        @name = name
    end
    

    def getName()
        return @name
    end
    

    def setMotionGestureInput(motionGestureInput)
        @motionGestureInput = motionGestureInput
    end
    

    def getMotionGestureInput()
        return @motionGestureInput
    end
end

require "org/allbinary/input/motion/gesture/MotionGestureInput"
require "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"

