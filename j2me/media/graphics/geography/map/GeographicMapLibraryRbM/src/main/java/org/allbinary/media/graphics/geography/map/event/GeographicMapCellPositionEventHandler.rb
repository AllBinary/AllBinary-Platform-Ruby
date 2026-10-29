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

require "java/lang/Object"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class GeographicMapCellPositionEventHandler < BasicEventHandler
    attr_accessor :list

    def initialize_fields
        @list = BasicArrayListD.new()
    end
    

    def self.getInstance()
        return GeographicMapCellPositionEventHandler.instance
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def addListener(miniMapLayer)
        if !@list.contains(miniMapLayer)
            @list.add(miniMapLayer)
        end
    end
    

    def removeAllListeners()
        @list.clear()
        super()
    end
    

    def removeListener(eventListenerInterface)
        @list.remove(eventListenerInterface)
        super(eventListenerInterface)
    end
    

    # throws Exception
    def fireEvent(eventObject)
        index = @list.size()
        while (index -= 1) >= 0
            begin
                miniMapLayer = @list.get(index)
                miniMapLayer.onGeographicMapCellPositionEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
        super(eventObject)
    end
    

    # throws Exception
    def fireRemoveEvent(eventObject)
        java_monitor.synchronize do
        list = @eventListenerInterfaceList
        index = @list.size()
        while (index -= 1) >= 0
            begin
                miniMapLayer = @list.get(index)
                miniMapLayer.onRemoveGeographicMapCellPositionEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
        eventListenerInterface = nil
        geographicMapCellPositionEventListenerInterface = nil
        size = list.size()
        (0...size).each do |index|
            begin
                eventListenerInterface = list.get(index)
                geographicMapCellPositionEventListenerInterface = (eventListenerInterface)
                geographicMapCellPositionEventListenerInterface.onRemoveGeographicMapCellPositionEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
        end
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        geographicMapCellPositionEventListenerInterface = (eventListenerInterface)
        geographicMapCellPositionEventListenerInterface.onGeographicMapCellPositionEvent(eventObject)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/layer/geographic/map/MiniMapLayer"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEvent"
require "org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEventListenerInterface"

class GeographicMapCellPositionEventHandler
    @@instance = GeographicMapCellPositionEventHandler.new()
end

