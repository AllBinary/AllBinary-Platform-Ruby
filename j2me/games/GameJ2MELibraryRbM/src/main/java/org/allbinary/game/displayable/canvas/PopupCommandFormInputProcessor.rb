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
# package org.allbinary.game.displayable.canvas

require "org/allbinary/game/displayable/canvas/CommandFormInputProcessor"

class PopupCommandFormInputProcessor < CommandFormInputProcessor
    

    def initialize(gameKeyEventList, playerInputId, gameCanvas, form, popupMenuInputProcessor)
        super(gameKeyEventList, playerInputId, gameCanvas, form)
    end
    

    # throws Exception
    def processInput(key)
        return super(key)
    end
    

    # throws Exception
    def processMotionInput(motionGestureEvent)
        super(motionGestureEvent)
    end
end

require "org/allbinary/graphics/displayable/MyCanvas"
require "org/allbinary/graphics/form/ScrollSelectionForm"
require "org/allbinary/input/motion/gesture/observer/MotionGestureEvent"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/displayable/canvas/PopupMenuInputProcessor"

