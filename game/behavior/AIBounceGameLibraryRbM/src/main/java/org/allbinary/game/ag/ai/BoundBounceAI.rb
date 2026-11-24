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
require "org/allbinary/game/ai/BasicAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai

class BoundBounceAI < ::Org::Allbinary::Game::Ai::BasicAI
    attr_accessor :currentRelativeAngle, :layerBounds, :boundsVisitorInterface

    def jfields_org_allbinary_game_ag_ai_BoundBounceAI
        @currentRelativeAngle = 0
        @layerBounds = nil unless instance_variable_defined?(:@layerBounds)
        @boundsVisitorInterface = nil unless instance_variable_defined?(:@boundsVisitorInterface)
    end
    

    def initialize(ownerLayerInterface, gameInput, layerBounds, boundsVisitorInterface)
        super(ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_BoundBounceAI
        @layerBounds = layerBounds
        @boundsVisitorInterface = boundsVisitorInterface
    end
    

    def paint(graphics)
        rectange = @layerBounds.getRectangleP()
        graphics.drawRect(rectange.getPoint().getX(), rectange.getPoint().getY(), rectange.getWidth(), rectange.getHeight())
    end
    java_overload :paint, 1
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        @layerBounds.visit(@boundsVisitorInterface)
    end
    java_overload :processAI, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Bounds; autoload :BoundsVisitorInterface, "org/allbinary/bounds/BoundsVisitorInterface" unless const_defined?(:BoundsVisitorInterface, false); end; end; end
module ::Org; module Allbinary; module Bounds; autoload :LayerBounds, "org/allbinary/bounds/LayerBounds" unless const_defined?(:LayerBounds, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end

end; end; end; end; end

