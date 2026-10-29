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
# package org.allbinary.input.motion.trackball.action

require "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent"

class UpTrackballInputToGameKeyEventAction < GameKeyCompleteMotionGestureInputEvent
    

    def self.getInstance()
        if UpTrackballInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT
            UpTrackballInputToGameKeyEventAction.instance = UpTrackballInputToGameKeyEventAction.new()
        end
        return UpTrackballInputToGameKeyEventAction.instance
    end
    

    def initialize()
        super("Up Action", TrackballMotionGestureFactory.getInstance().UP, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/input/PlatformInputMappingFactory"
require "org/allbinary/input/motion/gesture/TrackballMotionGestureFactory"
require "org/allbinary/logic/NullUtil"

class UpTrackballInputToGameKeyEventAction
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

