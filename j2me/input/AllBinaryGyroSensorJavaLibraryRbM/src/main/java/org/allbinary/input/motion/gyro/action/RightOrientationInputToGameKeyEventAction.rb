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
# package org.allbinary.input.motion.gyro.action

require "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent"

class RightOrientationInputToGameKeyEventAction < GameKeyCompleteMotionGestureInputEvent
    

    def self.getInstance()
        if RightOrientationInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT
            RightOrientationInputToGameKeyEventAction.instance = RightOrientationInputToGameKeyEventAction.new()
        end
        return RightOrientationInputToGameKeyEventAction.instance
    end
    

    def initialize()
        super("Right Action", OrientationMotionGestureFactory.getInstance().RIGHT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/input/PlatformInputMappingFactory"
require "org/allbinary/input/gyro/OrientationMotionGestureFactory"
require "org/allbinary/logic/NullUtil"

class RightOrientationInputToGameKeyEventAction
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

