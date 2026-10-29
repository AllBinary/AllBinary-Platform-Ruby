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

require "org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface"

class TopUBoundBounceAIFactory
    include ArtificialIntelligenceInterfaceFactoryInterface
    

    # throws Exception
    def getInstance(hashtable, ownerLayerInterface, gameInput)
        velocityInterfaceCompositeInterface = ownerLayerInterface
        velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
        maxDistancePerTick = (velocityInterface.getMaxForwardVelocity() >> velocityInterface.getVelocityXBasicDecimalP().getScaledFactor())
        halfWidth = ownerLayerInterface.getWidth() * 2 + maxDistancePerTick + 1
        halfHeight = ownerLayerInterface.getHeight() * 2 + maxDistancePerTick + 1
        point = PointFactory.getInstance().createXY(halfWidth, halfHeight + 60)
        displayInfo = DisplayInfoSingleton.getInstance()
        rectangle = Rectangle.new(point, (displayInfo.getLastWidth() - halfWidth - point.getX()), (displayInfo.getLastHeight() - halfHeight - point.getY()))
        return BoundBounceAI.new(ownerLayerInterface, gameInput, TopULayerBounds.new(rectangle), ReverseVelocityBoundsVisitor.new(ownerLayerInterface))
    end
end

require "org/allbinary/ai/ArtificialIntelligenceInterface"
require "org/allbinary/bounds/TopULayerBounds"
require "org/allbinary/game/input/GameInput"
require "org/allbinary/game/physics/velocity/VelocityInterface"
require "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface"
require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/game/ag/ai/BoundBounceAI"
require "org/allbinary/game/ag/ai/ReverseVelocityBoundsVisitor"

