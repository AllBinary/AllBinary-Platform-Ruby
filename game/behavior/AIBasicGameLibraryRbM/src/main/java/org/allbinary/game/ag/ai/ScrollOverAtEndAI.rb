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
# package org.allbinary.game.ag.ai

require "org/allbinary/game/ai/BasicAI"

class ScrollOverAtEndAI < BasicAI
    

    def initialize(ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        ownerLayerInterface = self.getOwnerLayerInterface()
        x = ownerLayerInterface.getXP()
        y = ownerLayerInterface.getYP()
        width = ownerLayerInterface.getWidth()
        height = ownerLayerInterface.getHeight()
        displayInfo = DisplayInfoSingleton.getInstance()
        if x > displayInfo.getLastWidth()
            ownerLayerInterface.setPosition(0, y, ownerLayerInterface.getZP())
        end
        if y > displayInfo.getLastHeight()
            ownerLayerInterface.setPosition(x, 0, ownerLayerInterface.getZP())
        end
        if x < -width
            ownerLayerInterface.setPosition(displayInfo.getLastWidth() - width, y, ownerLayerInterface.getZP())
        end
        if y < -height
            ownerLayerInterface.setPosition(x, displayInfo.getLastHeight() - height, ownerLayerInterface.getZP())
        end
    end
end

require "org/allbinary/game/input/GameInput"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"

