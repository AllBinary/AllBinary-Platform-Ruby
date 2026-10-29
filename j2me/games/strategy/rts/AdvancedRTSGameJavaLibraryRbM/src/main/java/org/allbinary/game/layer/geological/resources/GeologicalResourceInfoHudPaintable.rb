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

# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/layer/waypoint/WaypointInfoHudPaintable"

class GeologicalResourceInfoHudPaintable < WaypointInfoHudPaintable
    attr_accessor :keyvalueDrawString, :fontHeight

    def initialize_fields
        @keyvalueDrawString = nil
        @fontHeight = 0
    end
    

    def initialize()
        super()
        initialize_fields
        @keyvalueDrawString = KeyValueDrawCharArray.new(GeologicalResourceInfoHudPaintable::RESOURCES, @textX)
    end
    

    def updateMeasurement(graphics)
        super(graphics)
        font = graphics.getFont()
        @fontHeight = (2 * font.getHeight())
    end
    

    def updateSelectionInfo()
        super()
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
    

    def paint(graphics)
        super(graphics)
        @keyvalueDrawString.paint(graphics, (@y + @fontHeight))
    end
end

require "org/allbinary/game/layer/RTSLayer"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/graphics/draw/KeyValueDrawCharArray"
require "org/allbinary/game/layer/geological/resources/GeologicalGeographicMapCellPosition"

class GeologicalResourceInfoHudPaintable
    RESOURCES = "Resources: "
end

