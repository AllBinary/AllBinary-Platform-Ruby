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
# package org.allbinary.input.motion.gesture


class MotionGestureToMotionGestureActionAssociation
    attr_accessor :list, :motionGestureAction

    def initialize_fields
        @list = nil
        @motionGestureAction = nil
    end
    

    def initialize(list, commandAction)
        initialize_fields
        @list = list
        @motionGestureAction = commandAction
    end
    

    def getMotionGesture()
        return @list
    end
    

    def setMotionGestures(list)
        @list = list
    end
    

    def getCommandAction()
        return @motionGestureAction
    end
    

    def setMotionGestureAction(commandAction)
        @motionGestureAction = commandAction
    end
    

    def isMotionGestureArrayEquals(aList)
        size = aList.size()
        if @list.size() != size
            return false
        end
        (size - 1).step(0, -(1)) do |i|
            if aList.objectArray[i] != @list.objectArray[i]
                return false
            end
        end
        return true
    end
end

require "org/allbinary/game/input/CompleteMotionGestureInputEvent"
require "org/allbinary/util/BasicArrayList"

