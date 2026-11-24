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
# package org.allbinary.game.layer

require "java/lang/JavaOverload"
require "org/allbinary/graphics/paint/Paintable"

module ::Org; module Allbinary; module Game; module Layer

class RTSLayerCompositePaintable < ::Org::Allbinary::Graphics::Paint::Paintable
    attr_accessor :upgradeCost, :downGradeCost, :UPGRADE, :DOWNGRADE, :upgradableRTSLayerHudPaintable

    def jfields_org_allbinary_game_layer_RTSLayerCompositePaintable
        @upgradeCost = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @downGradeCost = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @UPGRADE = "Up: $"
        @DOWNGRADE = "Down: $-"
        @upgradableRTSLayerHudPaintable = nil unless instance_variable_defined?(:@upgradableRTSLayerHudPaintable)
    end
    

    def initialize(upgradableRTSLayerHudPaintable)
        super()
        jfields_org_allbinary_game_layer_RTSLayerCompositePaintable
        @upgradableRTSLayerHudPaintable = upgradableRTSLayerHudPaintable
    end
    

    def update(rtsLayer)
        if rtsLayer.isUpgradeable()
            self.setUpgradeCost(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@UPGRADE).appendint(((rtsLayer.getUpgradeCost()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s)
        else
            self.setUpgradeCost(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        end
        if rtsLayer.isDowngradeable()
            self.setDownGradeCost(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@DOWNGRADE).appendint(((rtsLayer.getDowngradeCost()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s)
        else
            self.setDownGradeCost(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        end
    end
    java_overload :update, 1
    

    def paint(graphics)
        graphics.drawString(self.getDownGradeCost(), @upgradableRTSLayerHudPaintable.textX, @upgradableRTSLayerHudPaintable.costY1, 0)
        graphics.drawString(self.getUpgradeCost(), @upgradableRTSLayerHudPaintable.textX, @upgradableRTSLayerHudPaintable.costY, 0)
    end
    java_overload :paint, 1
    

    def setUpgradeCost(upgradeCost)
        @upgradeCost = upgradeCost
    end
    java_overload :setUpgradeCost, 1
    

    def getUpgradeCost()
        return @upgradeCost
    end
    java_overload :getUpgradeCost, 0
    

    def setDownGradeCost(downGradeCost)
        @downGradeCost = downGradeCost
    end
    java_overload :setDownGradeCost, 1
    

    def getDownGradeCost()
        return @downGradeCost
    end
    java_overload :getDownGradeCost, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false)
autoload :UpgradableRTSLayerHudPaintable, "org/allbinary/game/layer/UpgradableRTSLayerHudPaintable" unless const_defined?(:UpgradableRTSLayerHudPaintable, false)

end; end; end; end

