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
require "org/allbinary/graphics/paint/InitUpdatePaintable"

module ::Org; module Allbinary; module Game; module Layer

class RTSLayerInfoPaintable < ::Org::Allbinary::Graphics::Paint::InitUpdatePaintable
    attr_accessor :initUpdatePaintable

    def jfields_org_allbinary_game_layer_RTSLayerInfoPaintable
        @initUpdatePaintable = ::Org::Allbinary::Graphics::Paint::NullInitUpdatePaintable.getInstance()
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_layer_RTSLayerInfoPaintable
    end
    

    def update()
        @initUpdatePaintable.update()
    end
    java_overload :update, 0
    

    def paint(graphics)
        @initUpdatePaintable.paint(graphics)
    end
    java_overload :paint, 1
    

    def updateRTSLayerInfoInit(hudPaintable)
        @initUpdatePaintable = hudPaintable
    end
    java_overload :updateRTSLayerInfoInit, 1
    

    def updateRTSLayerInfoSelection(hudPaintable)
        hudPaintable.updateSelectionInfo()
        @initUpdatePaintable = hudPaintable
    end
    java_overload :updateRTSLayerInfoSelection, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullInitUpdatePaintable, "org/allbinary/graphics/paint/NullInitUpdatePaintable" unless const_defined?(:NullInitUpdatePaintable, false); end; end; end; end
autoload :SelectionHudPaintable, "org/allbinary/game/layer/SelectionHudPaintable" unless const_defined?(:SelectionHudPaintable, false)

end; end; end; end

