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

class BoundBounceAI < BasicAI
    attr_accessor :currentRelativeAngle, :layerBounds, :boundsVisitorInterface

    def initialize_fields
        @currentRelativeAngle = 0
        @layerBounds = nil
        @boundsVisitorInterface = nil
    end
    

    def initialize(ownerLayerInterface, gameInput, layerBounds, boundsVisitorInterface)
        super(ownerLayerInterface, gameInput)
        initialize_fields
        @layerBounds = layerBounds
        @boundsVisitorInterface = boundsVisitorInterface
    end
    

    def paint(graphics)
        rectange = @layerBounds.getRectangleP()
        graphics.drawRect(rectange.getPoint().getX(), rectange.getPoint().getY(), rectange.getWidth(), rectange.getHeight())
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        @layerBounds.visit(@boundsVisitorInterface)
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :BoundsVisitorInterface, "org/allbinary/bounds/BoundsVisitorInterface"
autoload :LayerBounds, "org/allbinary/bounds/LayerBounds"
autoload :GameInput, "org/allbinary/game/input/GameInput"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"

