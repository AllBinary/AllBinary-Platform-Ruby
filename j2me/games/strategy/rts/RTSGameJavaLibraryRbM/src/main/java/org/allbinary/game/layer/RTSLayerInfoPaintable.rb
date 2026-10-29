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
require "org/allbinary/graphics/paint/InitUpdatePaintable"

class RTSLayerInfoPaintable < InitUpdatePaintable
    attr_accessor :initUpdatePaintable

    def initialize_fields
        @initUpdatePaintable = NullInitUpdatePaintable.getInstance()
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def update()
        @initUpdatePaintable.update()
    end
    

    def paint(graphics)
        @initUpdatePaintable.paint(graphics)
    end
    

    def updateRTSLayerInfoInit(hudPaintable)
        @initUpdatePaintable = hudPaintable
    end
    

    def updateRTSLayerInfoSelection(hudPaintable)
        hudPaintable.updateSelectionInfo()
        @initUpdatePaintable = hudPaintable
    end
end

require "org/allbinary/graphics/paint/NullInitUpdatePaintable"
require "org/allbinary/game/layer/SelectionHudPaintable"

