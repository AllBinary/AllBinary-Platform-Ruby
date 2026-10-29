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


class TiledLayerUtil
    

    def self.getInstance()
        return TiledLayerUtil.instance
    end
    

    def keepOnBorderdMapX(terrainTiledLayer, x, width, mapBorderBufferWidth)
        newX = x
        maxRight = terrainTiledLayer.getWidth() - width - mapBorderBufferWidth
        if x + width > maxRight
            newX = maxRight
        end
        if x < mapBorderBufferWidth
            newX = mapBorderBufferWidth
        end
        return newX
    end
    

    def keepOnBorderdMapY(terrainTiledLayer, y, height, mapBorderBufferHeight)
        newY = y
        maxBottom = terrainTiledLayer.getHeight() - height - mapBorderBufferHeight
        if y + height > maxBottom
            newY = maxBottom
        end
        if y < mapBorderBufferHeight
            newY = mapBorderBufferHeight
        end
        return newY
    end
    

    def keepOnMapX(terrainTiledLayer, x, width)
        newX = x
        maxRight = terrainTiledLayer.getWidth() - width
        if x >= maxRight
            newX = maxRight
        end
        if x < 0
            newX = 0
        end
        return newX
    end
    

    def keepOnMapY(terrainTiledLayer, y, height)
        newY = y
        maxBottom = terrainTiledLayer.getHeight() - height
        if y >= maxBottom
            newY = maxBottom
        end
        if y < 0
            newY = 0
        end
        return newY
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/AllBinaryTiledLayer"

class TiledLayerUtil
    @@instance = TiledLayerUtil.new()
end

