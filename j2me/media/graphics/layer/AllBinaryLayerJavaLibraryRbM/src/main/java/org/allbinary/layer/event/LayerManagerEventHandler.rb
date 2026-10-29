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
# package org.allbinary.layer.event

require "java/lang/Object"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class LayerManagerEventHandler < BasicEventHandler
    attr_accessor :list, :CREATE, :DELETE

    def initialize_fields
        @list = BasicArrayListD.new()
        @CREATE = "Create"
        @DELETE = "Delete"
    end
    

    def self.getInstance()
        return LayerManagerEventHandler.instance
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def addListener(layerManagerEventListener)
        if !@list.contains(layerManagerEventListener)
            @list.add(layerManagerEventListener)
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
                layerManagerEventListener = @list.objectArray[index]
                layerManagerEventListener.onCreateLayerManagerEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
        super(eventObject)
    end
    

    # throws Exception
    def fireDeleteEvent(eventObject)
        java_monitor.synchronize do
        index = @list.size()
        while (index -= 1) >= 0
            begin
                layerManagerEventListener = @list.objectArray[index]
                layerManagerEventListener.onDeleteLayerManagerEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
        eventListenerInterfaceList = @eventListenerInterfaceList
        eventListenerInterface = nil
        layerManagerEventListenerInterface = nil
        index = 0
        while index < eventListenerInterfaceList.size()
            begin
                eventListenerInterface = eventListenerInterfaceList.objectArray[index]
                layerManagerEventListenerInterface = (eventListenerInterface)
                layerManagerEventListenerInterface.onDeleteLayerManagerEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
            index += 1
        end
        end
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        layerManagerEventListenerInterface = (eventListenerInterface)
        layerManagerEventListenerInterface.onCreateLayerManagerEvent(eventObject)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/layer/event/LayerManagerEvent"
require "org/allbinary/layer/event/LayerManagerEventListener"
require "org/allbinary/layer/event/LayerManagerEventListenerInterface"

class LayerManagerEventHandler
    @@instance = LayerManagerEventHandler.new()
end

