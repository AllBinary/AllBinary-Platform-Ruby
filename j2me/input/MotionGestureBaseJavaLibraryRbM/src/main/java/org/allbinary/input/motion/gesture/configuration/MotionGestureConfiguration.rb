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


class MotionGestureConfiguration
    attr_accessor :diagonalMotionGestureAllowed, :diagonalTolerance, :minimumMotionGesture, :button, :color, :executingActions, :mouseButtonMask, :activeCommands

    def initialize_fields
        @diagonalMotionGestureAllowed = true
        @diagonalTolerance = 7
        @minimumMotionGesture = 9
        @button = StringUtil.getInstance().EMPTY_STRING
        @color = BasicColorFactory.getInstance().BLUE
        @executingActions = true
        @mouseButtonMask = 0
        @activeCommands = BasicArrayListD.new()
    end
    

    def initialize()
        initialize_fields
    end
    

    def addMotionGestureAction(list, commandAction)
        @activeCommands.add(MotionGestureToMotionGestureActionAssociation.new(list, commandAction))
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

require "org/allbinary/game/input/CompleteMotionGestureInputEvent"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/input/motion/gesture/MotionGestureToMotionGestureActionAssociation"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

