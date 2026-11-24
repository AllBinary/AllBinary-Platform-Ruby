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
# package org.allbinary.input.motion.gesture.configuration


module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Configuration

class MotionGestureConfiguration
    attr_accessor :diagonalMotionGestureAllowed, :diagonalTolerance, :minimumMotionGesture, :button, :color, :executingActions, :mouseButtonMask, :activeCommands

    def jfields_org_allbinary_input_motion_gesture_configuration_MotionGestureConfiguration
        @diagonalMotionGestureAllowed = true
        @diagonalTolerance = 7
        @minimumMotionGesture = 9
        @button = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @color = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLUE
        @executingActions = true
        @mouseButtonMask = 0
        @activeCommands = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def initialize()
        jfields_org_allbinary_input_motion_gesture_configuration_MotionGestureConfiguration
    end
    

    def addMotionGestureAction(list, commandAction)
        @activeCommands.add(::Org::Allbinary::Input::Motion::Gesture::MotionGestureToMotionGestureActionAssociation.new(list, commandAction))
    end
    

    def clearMotionGestureAction()
        @activeCommands.clear()
    end
    

    def getAssociateCommandActionsList()
        return @activeCommands
    end
    

    def isDiagonalMotionGestureAllowed()
        return @diagonalMotionGestureAllowed
    end
    

    def isExecutingActionsAllowed()
        return @executingActions
    end
    

    def setExecutingActionsAllowed(executingActionAllowed)
        @executingActions = executingActionAllowed
    end
    

    def setDiagonalMotionGestureAllowed(diagonalMotionGestureAllowed)
        @diagonalMotionGestureAllowed = diagonalMotionGestureAllowed
    end
    

    def getDiagonalTolerance()
        return @diagonalTolerance
    end
    

    def setDiagonalTolerance(diagonalTolerance)
        @diagonalTolerance = diagonalTolerance
    end
    

    def getMinimumMotionGesture()
        return @minimumMotionGesture
    end
    

    def setMinimumMotionGesture(minimumMotionGesture)
        @minimumMotionGesture = minimumMotionGesture
    end
    

    def getButton()
        return @button
    end
    

    def setButton(button)
        @button = button
    end
    

    def getColor()
        return @color
    end
    

    def setColor(color)
        @color = color
    end
    

    def getMouseButtonMask()
        return @mouseButtonMask
    end
    

    def setMouseButtonMask(mouseButtonMask)
        @mouseButtonMask = mouseButtonMask
    end
end

module ::Org; module Allbinary; module Game; module Input; autoload :CompleteMotionGestureInputEvent, "org/allbinary/game/input/CompleteMotionGestureInputEvent" unless const_defined?(:CompleteMotionGestureInputEvent, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :MotionGestureToMotionGestureActionAssociation, "org/allbinary/input/motion/gesture/MotionGestureToMotionGestureActionAssociation" unless const_defined?(:MotionGestureToMotionGestureActionAssociation, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end; end; end

