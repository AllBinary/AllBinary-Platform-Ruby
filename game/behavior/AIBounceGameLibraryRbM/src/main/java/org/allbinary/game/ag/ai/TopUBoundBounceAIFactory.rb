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

require "java/lang/JavaOverload"
require "org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface"

module ::Org; module Allbinary; module Game; module Ag; module Ai

class TopUBoundBounceAIFactory
    include ::Org::Allbinary::Game::Ai::ArtificialIntelligenceInterfaceFactoryInterface
    

    # throws Exception
    def getInstance(hashtable, ownerLayerInterface, gameInput)
        velocityInterfaceCompositeInterface = ownerLayerInterface
        velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
        maxDistancePerTick = (velocityInterface.getMaxForwardVelocity() >> velocityInterface.getVelocityXBasicDecimalP().getScaledFactor())
        halfWidth = ownerLayerInterface.getWidth() * 2 + maxDistancePerTick + 1
        halfHeight = ownerLayerInterface.getHeight() * 2 + maxDistancePerTick + 1
        point = ::Org::Allbinary::Graphics::PointFactory.getInstance().createXY(halfWidth, halfHeight + 60)
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        rectangle = ::Org::Allbinary::Graphics::Rectangle.new(point, (displayInfo.getLastWidth() - halfWidth - point.getX()), (displayInfo.getLastHeight() - halfHeight - point.getY()))
        return BoundBounceAI.new(ownerLayerInterface, gameInput, ::Org::Allbinary::Bounds::TopULayerBounds.new(rectangle), ReverseVelocityBoundsVisitor.new(ownerLayerInterface))
    end
    java_overload :getInstance, 3
end

module ::Org; module Allbinary; module Ai; autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface" unless const_defined?(:ArtificialIntelligenceInterface, false); end; end; end
module ::Org; module Allbinary; module Bounds; autoload :TopULayerBounds, "org/allbinary/bounds/TopULayerBounds" unless const_defined?(:TopULayerBounds, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :VelocityInterface, "org/allbinary/game/physics/velocity/VelocityInterface" unless const_defined?(:VelocityInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :VelocityInterfaceCompositeInterface, "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface" unless const_defined?(:VelocityInterfaceCompositeInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :BoundBounceAI, "org/allbinary/game/ag/ai/BoundBounceAI" unless const_defined?(:BoundBounceAI, false)
autoload :ReverseVelocityBoundsVisitor, "org/allbinary/game/ag/ai/ReverseVelocityBoundsVisitor" unless const_defined?(:ReverseVelocityBoundsVisitor, false)

end; end; end; end; end

