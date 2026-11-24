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

class ScrollOverAllowOutsideAtEndAI < ::Org::Allbinary::Game::Ai::BasicAI
    

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
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        if x > displayInfo.getLastWidth()
            ownerLayerInterface.setPosition(-width, y, ownerLayerInterface.getZP())
        end
        if y > displayInfo.getLastHeight()
            ownerLayerInterface.setPosition(x, -height, ownerLayerInterface.getZP())
        end
        if x < -width
            ownerLayerInterface.setPosition(displayInfo.getLastWidth() + width, y, ownerLayerInterface.getZP())
        end
        if y < -height
            ownerLayerInterface.setPosition(x, displayInfo.getLastHeight() + height, ownerLayerInterface.getZP())
        end
    end
    java_overload :processAI, 1
end

module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end

end; end; end; end; end

