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
# package org.allbinary.game.layer

require "java/lang/JavaOverload"
require "org/allbinary/game/input/PlayerGameInputCompositeInterface"
require "org/allbinary/game/layer/AllBinaryGameLayer"

module ::Org; module Allbinary; module Game; module Layer

class PlayerGameInputGameLayer < AllBinaryGameLayer
    include ::Org::Allbinary::Game::Input::PlayerGameInputCompositeInterface
    attr_accessor :playerGameInput

    def jfields_org_allbinary_game_layer_PlayerGameInputGameLayer
        @playerGameInput = nil unless instance_variable_defined?(:@playerGameInput)
    end
    

    def initialize(playerInputId)
        super(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Graphics::Rectangle.new(::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO, 0, 0), ::Org::Allbinary::View::StaticViewPosition.new(0, 0, 0))
        jfields_org_allbinary_game_layer_PlayerGameInputGameLayer
        @playerGameInput = ::Org::Allbinary::Game::Input::PlayerGameInput.new(self.getGameKeyEventList(), ::Org::Allbinary::Util::BasicArrayListD.new(), playerInputId)
        canvasStrings = ::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance()
        @logUtil.putF("Danger Danger Danger: Should Not Be Called Except For Testing Input", self, canvasStrings.PAINT)
    end
    

    def getPlayerGameInput()
        return @playerGameInput
    end
    java_overload :getPlayerGameInput, 0
    

    def initInputProcessors()
    end
    java_overload :initInputProcessors, 0
    

    # throws Exception
    def processInput(myManager)
    end
    java_overload :processInput, 1
    

    def paint(graphics)
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :PlayerGameInput, "org/allbinary/game/input/PlayerGameInput" unless const_defined?(:PlayerGameInput, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module View; autoload :StaticViewPosition, "org/allbinary/view/StaticViewPosition" unless const_defined?(:StaticViewPosition, false); end; end; end

end; end; end; end

