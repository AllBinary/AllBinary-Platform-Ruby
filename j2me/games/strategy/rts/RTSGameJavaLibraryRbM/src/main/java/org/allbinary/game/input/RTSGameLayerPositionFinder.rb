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
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/game/input/LayerPositionFinderInterface"

module ::Org; module Allbinary; module Game; module Input

class RTSGameLayerPositionFinder
    include LayerPositionFinderInterface
    

    def self.getInstance()
        return RTSGameLayerPositionFinder.instance
    end
    

    def initialize()
    end
    

    def getLayerInterface(geographicMapCellPosition)
        return ::Org::Allbinary::Media::Graphics::Geography::Map::Drop::DropCellPositionHistory.getInstance().getLayerInterface(geographicMapCellPosition)
    end
    java_overload :getLayerInterface, 1

    def self.instance()
        RTSGameLayerPositionFinder.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        RTSGameLayerPositionFinder.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = RTSGameLayerPositionFinder.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RTSGameLayerPositionFinder"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPosition, "org/allbinary/media/graphics/geography/map/GeographicMapCellPosition" unless const_defined?(:GeographicMapCellPosition, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Drop; autoload :DropCellPositionHistory, "org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory" unless const_defined?(:DropCellPositionHistory, false); end; end; end; end; end; end; end

begin
    RTSGameLayerPositionFinder.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

