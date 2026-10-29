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
require "org/allbinary/game/layer/RTSLayerCompositePaintable"

class UpgradableWideRTSLayerPaintable < RTSLayerCompositePaintable
    attr_accessor :cost

    def initialize_fields
        @cost = StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(upgradableRTSLayerHudPaintable)
        super(upgradableRTSLayerHudPaintable)
        initialize_fields
    end
    

    def update(rtsLayer)
        super(rtsLayer)
        self.setCost(StringMaker.new().append(self.getUpgradeCost()).append(CommonSeps.getInstance().SPACE).append(self.getDownGradeCost()).to_s)
    end
    

    def paint(graphics)
        graphics.drawString(self.getCost(), @upgradableRTSLayerHudPaintable.textX, @upgradableRTSLayerHudPaintable.costY, 0)
    end
    

    def setCost(cost)
        @cost = cost
    end
    

    def getCost()
        return @cost
    end
end

require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/game/layer/UpgradableRTSLayerHudPaintable"

