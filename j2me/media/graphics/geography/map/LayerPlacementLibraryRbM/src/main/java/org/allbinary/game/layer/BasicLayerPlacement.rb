#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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

class BasicLayerPlacement
    attr_accessor :layerType, :width, :height

    def jfields_org_allbinary_game_layer_BasicLayerPlacement
        @layerType = nil unless instance_variable_defined?(:@layerType)
        @width = nil unless instance_variable_defined?(:@width)
        @height = nil unless instance_variable_defined?(:@height)
    end
    

    def initialize(layerType, width, height)
        jfields_org_allbinary_game_layer_BasicLayerPlacement
        @layerType = layerType
        @width = width
        @height = height
    end
    

    def getWidth()
        return @width
    end
    

    def getHeight()
        return @height
    end
    

    def getLayerType()
        return @layerType
    end
    

    def setLayerType(layerType)
        @layerType = layerType
    end
end

autoload :LayerPlacementType, "org/allbinary/game/layer/LayerPlacementType" unless const_defined?(:LayerPlacementType, false)

end; end; end; end

