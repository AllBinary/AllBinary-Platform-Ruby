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

require "java/lang/JavaOverload"
require "org/allbinary/view/ViewPosition"

module ::Org; module Allbinary; module Game; module View

class TileLayerPositionIntoViewPosition < ::Org::Allbinary::View::ViewPosition
    attr_accessor :tiledLayer

    def jfields_org_allbinary_game_view_TileLayerPositionIntoViewPosition
        @tiledLayer = ::Org::Allbinary::Layer::NullLayer.getInstance()
    end
    

    def initialize()
        super(0, 0, 0)
        jfields_org_allbinary_game_view_TileLayerPositionIntoViewPosition
    end
    

    def getX()
        return TileLayerPositionIntoViewPosition.superclass.java_super_method(:getX, 0).bind(self).call() - @tiledLayer.getXP()
    end
    java_overload :getX, 0
    

    def getY()
        return TileLayerPositionIntoViewPosition.superclass.java_super_method(:getY, 0).bind(self).call() - @tiledLayer.getYP()
    end
    java_overload :getY, 0
    

    def getZ()
        return TileLayerPositionIntoViewPosition.superclass.java_super_method(:getZ, 0).bind(self).call() - @tiledLayer.getZP()
    end
    java_overload :getZ, 0
    

    def setTiledLayer(tiledLayer)
        @tiledLayer = tiledLayer
    end
    java_overload :setTiledLayer, 1
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :Layer, "org/allbinary/layer/Layer" unless const_defined?(:Layer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :NullLayer, "org/allbinary/layer/NullLayer" unless const_defined?(:NullLayer, false); end; end; end

end; end; end; end

