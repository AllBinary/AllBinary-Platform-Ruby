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

class DownTrackballInputToGameKeyEventAction < GameKeyCompleteMotionGestureInputEvent
    

    def self.getInstance()
        if DownTrackballInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT
            DownTrackballInputToGameKeyEventAction.instance = DownTrackballInputToGameKeyEventAction.new()
        end
        return DownTrackballInputToGameKeyEventAction.instance
    end
    

    def initialize()
        super("Down Action", TrackballMotionGestureFactory.getInstance().DOWN, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
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

class DownTrackballInputToGameKeyEventAction
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

