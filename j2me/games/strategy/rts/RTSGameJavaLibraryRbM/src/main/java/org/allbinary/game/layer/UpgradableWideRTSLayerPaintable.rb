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
require "org/allbinary/game/layer/RTSLayerCompositePaintable"

module ::Org; module Allbinary; module Game; module Layer

class UpgradableWideRTSLayerPaintable < RTSLayerCompositePaintable
    attr_accessor :cost

    def jfields_org_allbinary_game_layer_UpgradableWideRTSLayerPaintable
        @cost = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(upgradableRTSLayerHudPaintable)
        super(upgradableRTSLayerHudPaintable)
        jfields_org_allbinary_game_layer_UpgradableWideRTSLayerPaintable
    end
    

    def update(rtsLayer)
        UpgradableWideRTSLayerPaintable.superclass.java_super_method(:update, 1).bind(self).call(rtsLayer)
        self.setCost(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(self.getUpgradeCost()).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(self.getDownGradeCost()).to_s)
    end
    java_overload :update, 1
    

    def paint(graphics)
        graphics.drawString(self.getCost(), @upgradableRTSLayerHudPaintable.textX, @upgradableRTSLayerHudPaintable.costY, 0)
    end
    java_overload :paint, 1
    

    def setCost(cost)
        @cost = cost
    end
    java_overload :setCost, 1
    

    def getCost()
        return @cost
    end
    java_overload :getCost, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false)
autoload :UpgradableRTSLayerHudPaintable, "org/allbinary/game/layer/UpgradableRTSLayerHudPaintable" unless const_defined?(:UpgradableRTSLayerHudPaintable, false)

end; end; end; end

