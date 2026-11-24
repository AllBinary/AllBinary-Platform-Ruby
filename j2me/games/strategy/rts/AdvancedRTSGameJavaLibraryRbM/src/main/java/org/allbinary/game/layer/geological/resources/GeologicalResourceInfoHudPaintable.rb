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
# package org.allbinary.game.layer.geological.resources

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/waypoint/WaypointInfoHudPaintable"

module ::Org; module Allbinary; module Game; module Layer; module Geological; module Resources

class GeologicalResourceInfoHudPaintable < ::Org::Allbinary::Game::Layer::Waypoint::WaypointInfoHudPaintable
    attr_accessor :keyvalueDrawString, :fontHeight

    def jfields_org_allbinary_game_layer_geological_resources_GeologicalResourceInfoHudPaintable
        @keyvalueDrawString = nil unless instance_variable_defined?(:@keyvalueDrawString)
        @fontHeight = 0
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_layer_geological_resources_GeologicalResourceInfoHudPaintable
        @keyvalueDrawString = ::Org::Allbinary::Graphics::Draw::KeyValueDrawCharArray.new(GeologicalResourceInfoHudPaintable::RESOURCES, @textX)
    end
    

    def updateMeasurement(graphics)
        GeologicalResourceInfoHudPaintable.superclass.java_super_method(:updateMeasurement, 1).bind(self).call(graphics)
        font = graphics.getFont()
        @fontHeight = (2 * font.getHeight())
    end
    java_overload :updateMeasurement, 1
    

    def updateSelectionInfo()
        GeologicalResourceInfoHudPaintable.superclass.java_super_method(:updateSelectionInfo, 0).bind(self).call()
        rtsLayer = @rtsLayerP
        list = rtsLayer.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList()
        total = 0
        index = list.size()
        while (index -= 1) >= 0
            geographicMapCellPosition = list.get(index)
            total += geographicMapCellPosition.getGeologicalResource().getTotal()
        end
        @keyvalueDrawString.update(self.getPrimitiveLongUtil().getCharArray(total), self.getPrimitiveLongUtil().getCurrentTotalDigits())
    end
    java_overload :updateSelectionInfo, 0
    

    def paint(graphics)
        GeologicalResourceInfoHudPaintable.superclass.java_super_method(:paint, 1).bind(self).call(graphics)
        @keyvalueDrawString.paint(graphics, (@y + @fontHeight))
    end
    java_overload :paint, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:RESOURCES, "Resources: ")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GeologicalResourceInfoHudPaintable"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:RESOURCES].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayer, "org/allbinary/game/layer/RTSLayer" unless const_defined?(:RTSLayer, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Draw; autoload :KeyValueDrawCharArray, "org/allbinary/graphics/draw/KeyValueDrawCharArray" unless const_defined?(:KeyValueDrawCharArray, false); end; end; end; end
autoload :GeologicalGeographicMapCellPosition, "org/allbinary/game/layer/geological/resources/GeologicalGeographicMapCellPosition" unless const_defined?(:GeologicalGeographicMapCellPosition, false)

begin
    GeologicalResourceInfoHudPaintable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

