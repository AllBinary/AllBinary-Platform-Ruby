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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/paint/Paintable"

class RTSLayerCompositePaintable < Paintable
    attr_accessor :upgradeCost, :downGradeCost, :UPGRADE, :DOWNGRADE, :upgradableRTSLayerHudPaintable

    def initialize_fields
        @upgradeCost = StringUtil.getInstance().EMPTY_STRING
        @downGradeCost = StringUtil.getInstance().EMPTY_STRING
        @UPGRADE = "Up: $"
        @DOWNGRADE = "Down: $-"
        @upgradableRTSLayerHudPaintable = nil
    end
    

    def initialize(upgradableRTSLayerHudPaintable)
        super()
        initialize_fields
        @upgradableRTSLayerHudPaintable = upgradableRTSLayerHudPaintable
    end
    

    def update(rtsLayer)
        if rtsLayer.isUpgradeable()
            self.setUpgradeCost(StringMaker.new().append(@UPGRADE).appendint((rtsLayer.getUpgradeCost()).to_i).to_s)
        else
            self.setUpgradeCost(StringUtil.getInstance().EMPTY_STRING)
        end
        if rtsLayer.isDowngradeable()
            self.setDownGradeCost(StringMaker.new().append(@DOWNGRADE).appendint((rtsLayer.getDowngradeCost()).to_i).to_s)
        else
            self.setDownGradeCost(StringUtil.getInstance().EMPTY_STRING)
        end
    end
    

    def paint(graphics)
        graphics.drawString(self.getDownGradeCost(), @upgradableRTSLayerHudPaintable.textX, @upgradableRTSLayerHudPaintable.costY1, 0)
        graphics.drawString(self.getUpgradeCost(), @upgradableRTSLayerHudPaintable.textX, @upgradableRTSLayerHudPaintable.costY, 0)
    end
    

    def setUpgradeCost(upgradeCost)
        @upgradeCost = upgradeCost
    end
    

    def getUpgradeCost()
        return @upgradeCost
    end
    

    def setDownGradeCost(downGradeCost)
        @downGradeCost = downGradeCost
    end
    

    def getDownGradeCost()
        return @downGradeCost
    end
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/game/layer/UpgradableRTSLayerHudPaintable"

