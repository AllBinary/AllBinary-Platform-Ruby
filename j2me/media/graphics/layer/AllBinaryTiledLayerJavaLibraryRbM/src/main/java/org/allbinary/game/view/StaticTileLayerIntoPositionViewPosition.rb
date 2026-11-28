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

class StaticTileLayerIntoPositionViewPosition < ::Org::Allbinary::View::ViewPosition
    

    def initialize()
        super(0, 0, 0)
    end
    

    def getX()
        return StaticTileLayerIntoPositionViewPosition.superclass.java_super_method(:getX, 0).bind(self).call() - @@tiledLayer.getXP()
    end
    java_overload :getX, 0
    

    def getY()
        return StaticTileLayerIntoPositionViewPosition.superclass.java_super_method(:getY, 0).bind(self).call() - @@tiledLayer.getYP()
    end
    java_overload :getY, 0
    

    def getZ()
        return StaticTileLayerIntoPositionViewPosition.superclass.java_super_method(:getZ, 0).bind(self).call() - @@tiledLayer.getZP()
    end
    java_overload :getZ, 0
    

    def self.setTiledLayer(tiledLayer)
        @@tiledLayer = tiledLayer
    end

    def self.tiledLayer()
        StaticTileLayerIntoPositionViewPosition.java_static_fields unless @java_static_fields_started
        return defined?(@@tiledLayer) ? @@tiledLayer : nil
    end

    def self.tiledLayer=(value)
        StaticTileLayerIntoPositionViewPosition.java_static_fields unless @java_static_fields_started
        @@tiledLayer = value
    end

    def self.layer()
        StaticTileLayerIntoPositionViewPosition.java_static_fields unless @java_static_fields_started
        return defined?(@@layer) ? @@layer : nil
    end

    def self.layer=(value)
        StaticTileLayerIntoPositionViewPosition.java_static_fields unless @java_static_fields_started
        @@layer = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@tiledLayer = ::Org::Allbinary::Layer::NullLayer.getInstance()
            @@layer = ::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StaticTileLayerIntoPositionViewPosition"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :Layer, "org/allbinary/layer/Layer" unless const_defined?(:Layer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :NullLayer, "org/allbinary/layer/NullLayer" unless const_defined?(:NullLayer, false); end; end; end

begin
    StaticTileLayerIntoPositionViewPosition.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

