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


module ::Org; module Allbinary; module Game; module Layer

class TiledLayerUtil
    

    def self.getInstance()
        return @@instance
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
        TiledLayerUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TiledLayerUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TiledLayerUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TiledLayerUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false)

begin
    TiledLayerUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

