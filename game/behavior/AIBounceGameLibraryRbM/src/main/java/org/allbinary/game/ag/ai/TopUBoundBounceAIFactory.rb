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

autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface"
autoload :TopULayerBounds, "org/allbinary/bounds/TopULayerBounds"
autoload :GameInput, "org/allbinary/game/input/GameInput"
autoload :VelocityInterface, "org/allbinary/game/physics/velocity/VelocityInterface"
autoload :VelocityInterfaceCompositeInterface, "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface"
autoload :GPoint, "org/allbinary/graphics/GPoint"
autoload :PointFactory, "org/allbinary/graphics/PointFactory"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :BoundBounceAI, "org/allbinary/game/ag/ai/BoundBounceAI"
autoload :ReverseVelocityBoundsVisitor, "org/allbinary/game/ag/ai/ReverseVelocityBoundsVisitor"

