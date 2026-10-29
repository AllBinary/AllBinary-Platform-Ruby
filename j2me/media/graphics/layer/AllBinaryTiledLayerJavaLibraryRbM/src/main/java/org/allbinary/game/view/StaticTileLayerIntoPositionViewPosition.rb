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

class StaticTileLayerIntoPositionViewPosition < ViewPosition
    

    def initialize()
        super(0, 0, 0)
    end
    

    def getX()
        return super() - StaticTileLayerIntoPositionViewPosition.tiledLayer.getXP()
    end
    

    def getY()
        return super() - StaticTileLayerIntoPositionViewPosition.tiledLayer.getYP()
    end
    

    def getZ()
        return super() - StaticTileLayerIntoPositionViewPosition.tiledLayer.getZP()
    end
    

    def self.setTiledLayer(tiledLayer)
        StaticTileLayerIntoPositionViewPosition.tiledLayer = tiledLayer
    end

    def self.tiledLayer()
        return defined?(@@tiledLayer) ? @@tiledLayer : nil
    end

    def self.tiledLayer=(value)
        @@tiledLayer = value
    end

    def self.layer()
        return defined?(@@layer) ? @@layer : nil
    end

    def self.layer=(value)
        @@layer = value
    end
end

require "org/allbinary/game/layer/AllBinaryTiledLayer"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/Layer"
require "org/allbinary/layer/NullLayer"

class StaticTileLayerIntoPositionViewPosition
    @@tiledLayer = NullLayer.getInstance()
    @@layer = AllBinaryLayer::NULL_ALLBINARY_LAYER
end

