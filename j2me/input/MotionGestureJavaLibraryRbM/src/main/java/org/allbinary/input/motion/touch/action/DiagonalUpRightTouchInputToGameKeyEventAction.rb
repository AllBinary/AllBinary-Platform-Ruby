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
# package org.allbinary.input.motion.touch.action

require "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent"

class DiagonalUpRightTouchInputToGameKeyEventAction < GameKeyCompleteMotionGestureInputEvent
    

    def self.getInstance()
        if DiagonalUpRightTouchInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT
            DiagonalUpRightTouchInputToGameKeyEventAction.instance = DiagonalUpRightTouchInputToGameKeyEventAction.new()
        end
        return DiagonalUpRightTouchInputToGameKeyEventAction.instance
    end
    

    def initialize()
        super("Diagonal Up Right Action", TouchMotionGestureFactory.getInstance().DIAGONAL_UP_RIGHT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/input/PlatformInputMappingFactory"
require "org/allbinary/input/motion/gesture/TouchMotionGestureFactory"
require "org/allbinary/logic/NullUtil"

class DiagonalUpRightTouchInputToGameKeyEventAction
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

