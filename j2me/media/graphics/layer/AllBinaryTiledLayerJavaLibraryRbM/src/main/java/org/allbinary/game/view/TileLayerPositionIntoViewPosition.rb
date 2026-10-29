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
# package org.allbinary.game.view

require "org/allbinary/view/ViewPosition"

class TileLayerPositionIntoViewPosition < ViewPosition
    attr_accessor :tiledLayer

    def initialize_fields
        @tiledLayer = NullLayer.getInstance()
    end
    

    def initialize()
        super(0, 0, 0)
        initialize_fields
    end
    

    def getX()
        return super() - @tiledLayer.getXP()
    end
    

    def getY()
        return super() - @tiledLayer.getYP()
    end
    

    def getZ()
        return super() - @tiledLayer.getZP()
    end
    

    def setTiledLayer(tiledLayer)
        @tiledLayer = tiledLayer
    end
end

require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/layer/Layer"
require "org/allbinary/layer/NullLayer"

