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


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Event

class GeographicMapCellPositionEventUtil
    attr_accessor :geographicMapCellPositionEvent, :geographicMapCellPositionEventHandler

    def jfields_org_allbinary_media_graphics_geography_map_event_GeographicMapCellPositionEventUtil
        @geographicMapCellPositionEvent = nil unless instance_variable_defined?(:@geographicMapCellPositionEvent)
        @geographicMapCellPositionEventHandler = GeographicMapCellPositionEventHandler.getInstance()
    end
    

    def initialize(anyType)
        jfields_org_allbinary_media_graphics_geography_map_event_GeographicMapCellPositionEventUtil
        @geographicMapCellPositionEvent = GeographicMapCellPositionEvent.new(anyType, ::Org::Allbinary::Graphics::CellPositionFactory.getInstance().NONE)
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

module ::Org; module Allbinary; module Graphics; autoload :CellPositionFactory, "org/allbinary/graphics/CellPositionFactory" unless const_defined?(:CellPositionFactory, false); end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellPositionTracking, "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionTracking" unless const_defined?(:GeographicMapCellPositionTracking, false); end; end; end; end; end; end
autoload :GeographicMapCellPositionEvent, "org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEvent" unless const_defined?(:GeographicMapCellPositionEvent, false)
autoload :GeographicMapCellPositionEventHandler, "org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEventHandler" unless const_defined?(:GeographicMapCellPositionEventHandler, false)

end; end; end; end; end; end; end

