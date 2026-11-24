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


module ::Org; module Allbinary; module Input; module Motion; module Gesture

class MotionGestureToMotionGestureActionAssociation
    attr_accessor :list, :motionGestureAction

    def jfields_org_allbinary_input_motion_gesture_MotionGestureToMotionGestureActionAssociation
        @list = nil unless instance_variable_defined?(:@list)
        @motionGestureAction = nil unless instance_variable_defined?(:@motionGestureAction)
    end
    

    def initialize(list, commandAction)
        jfields_org_allbinary_input_motion_gesture_MotionGestureToMotionGestureActionAssociation
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

module ::Org; module Allbinary; module Game; module Input; autoload :CompleteMotionGestureInputEvent, "org/allbinary/game/input/CompleteMotionGestureInputEvent" unless const_defined?(:CompleteMotionGestureInputEvent, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end; end

