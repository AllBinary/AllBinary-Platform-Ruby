# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
require "org/allbinary/graphics/form/item/ABCustomImageItem"
require "org/allbinary/graphics/font/UpdateMyFontInterface"

module ::Org; module Allbinary; module Game; module Layer

class TechnologyRTSInterfaceImageItem < ::Org::Allbinary::Graphics::Form::Item::ABCustomImageItem
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :rtsInterface, :primitiveLongUtil, :LEVEL, :COST, :DOLLAR, :myFontProcessor, :costString, :costLength, :levelString, :levelLength, :adjustedCostLabelY, :adjustedCostX, :adjustedCostY, :adjustedLevelX, :adjustedLevelY

    def jfields_org_allbinary_game_layer_TechnologyRTSInterfaceImageItem
        @rtsInterface = nil unless instance_variable_defined?(:@rtsInterface)
        @primitiveLongUtil = ::Org::Allbinary::Logic::MathPackage::PrimitiveLongUtil.createPowerOfTen(10000)
        @LEVEL = "Level"
        @COST = "Cost"
        @DOLLAR = "$"
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @costString = ::Org::Allbinary::Logic::Java::Character::CharArrayFactory.getInstance().getZeroCharArray()
        @costLength = 0 unless instance_variable_defined?(:@costLength)
        @levelString = ::Org::Allbinary::Logic::Java::Character::CharArrayFactory.getInstance().getZeroCharArray()
        @levelLength = 0 unless instance_variable_defined?(:@levelLength)
        @adjustedCostLabelY = 0 unless instance_variable_defined?(:@adjustedCostLabelY)
        @adjustedCostX = 0 unless instance_variable_defined?(:@adjustedCostX)
        @adjustedCostY = 0 unless instance_variable_defined?(:@adjustedCostY)
        @adjustedLevelX = 0 unless instance_variable_defined?(:@adjustedLevelX)
        @adjustedLevelY = 0 unless instance_variable_defined?(:@adjustedLevelY)
    end
    

    def initialize(label, img, layout, altText, basicColor, rtsInterface)
        super(label, img, layout, altText, basicColor, 0)
        jfields_org_allbinary_game_layer_TechnologyRTSInterfaceImageItem
        @rtsInterface = rtsInterface
        self.update()
    end
    

    def updateMeasurement(graphics)
        font = graphics.getFont()
        fontHeight = font.getHeight()
        imageHeight = 0
        image = self.getImage()
        if image != ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
            imageHeight = image.getHeight()
        end
        @adjustedCostLabelY = -@yOffset + imageHeight - (3 * fontHeight)
        @adjustedCostY = -@yOffset + imageHeight - (2 * fontHeight)
        @adjustedCostX = 2 + (@DOLLAR.length * (fontHeight - 1))
        @adjustedLevelY = -@yOffset + imageHeight - fontHeight
        @adjustedLevelX = 2 + (@LEVEL.length * (fontHeight - 1))
        @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
    end
    java_overload :updateMeasurement, 1
    

    def getRtsInterface()
        return @rtsInterface
    end
    java_overload :getRtsInterface, 0
    

    def update()
        @costString = @primitiveLongUtil.getCharArray(self.getRtsInterface().getUpgradeCost())
        @levelString = @primitiveLongUtil.getCharArray(self.getRtsInterface().getLevel())
    end
    java_overload :update, 0
    

    def paintXY(graphics, x, y)
        @myFontProcessor.process(graphics)
        TechnologyRTSInterfaceImageItem.superclass.java_super_method(:paintXY, 3).bind(self).call(graphics, x, y)
        xa = x + 2
        graphics.drawString(@COST, xa, y + @adjustedCostLabelY, 0)
        graphics.drawString(@DOLLAR, xa, y + @adjustedCostY, 0)
        graphics.drawChars(@costString, 0, @costLength, x + @adjustedCostX, y + @adjustedCostY, 0)
        graphics.drawString(@LEVEL, xa, y + @adjustedLevelY, 0)
        graphics.drawChars(@levelString, 0, @levelLength, x + @adjustedLevelX, y + @adjustedLevelY, 0)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Character; autoload :CharArrayFactory, "org/allbinary/logic/java/character/CharArrayFactory" unless const_defined?(:CharArrayFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveLongUtil, "org/allbinary/logic/math/PrimitiveLongUtil" unless const_defined?(:PrimitiveLongUtil, false); end; end; end; end
autoload :RTSInterface, "org/allbinary/game/layer/RTSInterface" unless const_defined?(:RTSInterface, false)

end; end; end; end

