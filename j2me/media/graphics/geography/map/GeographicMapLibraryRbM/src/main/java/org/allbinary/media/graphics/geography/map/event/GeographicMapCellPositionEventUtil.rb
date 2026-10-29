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
# package org.allbinary.media.graphics.geography.map.event


class GeographicMapCellPositionEventUtil
    attr_accessor :geographicMapCellPositionEvent, :geographicMapCellPositionEventHandler

    def initialize_fields
        @geographicMapCellPositionEvent = nil
        @geographicMapCellPositionEventHandler = GeographicMapCellPositionEventHandler.getInstance()
    end
    

    def initialize(anyType)
        initialize_fields
        @geographicMapCellPositionEvent = GeographicMapCellPositionEvent.new(anyType, CellPositionFactory.getInstance().NONE)
    end
    

    # throws Exception
    def update(geographicMapCellPositionTracking)
        @geographicMapCellPositionEvent.setGeographicMapCellPosition(geographicMapCellPositionTracking.getCurrentGeographicMapCellPosition())
        @geographicMapCellPositionEventHandler.fireEvent(@geographicMapCellPositionEvent)
    end
    

    # throws Exception
    def remove(geographicMapCellPositionTracking)
        @geographicMapCellPositionEvent.setGeographicMapCellPosition(geographicMapCellPositionTracking.getCurrentGeographicMapCellPosition())
        @geographicMapCellPositionEventHandler.fireRemoveEvent(@geographicMapCellPositionEvent)
    end
end

require "org/allbinary/graphics/CellPositionFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionTracking"
require "org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEvent"
require "org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEventHandler"

