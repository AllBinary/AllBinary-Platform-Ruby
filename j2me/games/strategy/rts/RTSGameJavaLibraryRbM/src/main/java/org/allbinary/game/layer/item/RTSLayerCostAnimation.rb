# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
# package org.allbinary.game.layer.item

require "java/lang/JavaOverload"
require "org/allbinary/game/rts/technology/event/TechEventListenerInterface"
require "org/allbinary/animation/Animation"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

module ::Org; module Allbinary; module Game; module Layer; module Item

class RTSLayerCostAnimation < ::Org::Allbinary::Animation::Animation
    include ::Org::Allbinary::Game::Rts::Technology::Event::TechEventListenerInterface
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :logUtil, :primitiveLongUtil, :DOLLAR, :image, :layerInterfaceFactoryInterface, :myFontProcessor, :costString, :len, :adjustedCostX, :fontHeight

    def jfields_org_allbinary_game_layer_item_RTSLayerCostAnimation
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @primitiveLongUtil = ::Org::Allbinary::Logic::MathPackage::PrimitiveLongUtil.createPowerOfTen(10000)
        @DOLLAR = "$"
        @image = nil unless instance_variable_defined?(:@image)
        @layerInterfaceFactoryInterface = nil unless instance_variable_defined?(:@layerInterfaceFactoryInterface)
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @costString = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_CHAR_ARRAY
        @len = 0 unless instance_variable_defined?(:@len)
        @adjustedCostX = 0 unless instance_variable_defined?(:@adjustedCostX)
        @fontHeight = 0
    end
    

    def initialize(image, layerInterfaceFactoryInterface)
        super()
        jfields_org_allbinary_game_layer_item_RTSLayerCostAnimation
        @image = image
        @layerInterfaceFactoryInterface = layerInterfaceFactoryInterface
        self.update()
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        @fontHeight = font.getHeight()
        @adjustedCostX = font.stringWidth(@DOLLAR)
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def onEvent(event)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    def onTechEvent(event)
        begin
            self.update()
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "onTechEvent", e)
        end
    end
    java_overload :onTechEvent, 1
    

    # throws Exception
    def update()
        @len = 0
        @costString = @primitiveLongUtil.getCharArray(@layerInterfaceFactoryInterface.getCost())
        @len = @primitiveLongUtil.getCurrentTotalDigits()
    end
    java_overload :update, 0
    

    def paintXY(graphics, x, y)
        @myFontProcessor.process(graphics)
        RTSLayerCostAnimation.superclass.java_super_method(:paintXY, 3).bind(self).call(graphics, x, y)
        adjustedCostY = @image.getHeight() - @fontHeight
        xa = x + 2
        graphics.drawString(@DOLLAR, xa, y + adjustedCostY, 0)
        graphics.drawChars(@costString, 0, @len, x + @adjustedCostX, y + adjustedCostY, 0)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :CostLayerInterfaceFactoryInterface, "org/allbinary/game/layer/CostLayerInterfaceFactoryInterface" unless const_defined?(:CostLayerInterfaceFactoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveLongUtil, "org/allbinary/logic/math/PrimitiveLongUtil" unless const_defined?(:PrimitiveLongUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end

end; end; end; end; end

