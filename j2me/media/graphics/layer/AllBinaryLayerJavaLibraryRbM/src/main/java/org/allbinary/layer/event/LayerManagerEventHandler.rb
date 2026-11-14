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
        listenerIndex = 0
        while listenerIndex < eventListenerInterfaceList.size()
            begin
                eventListenerInterface = eventListenerInterfaceList.objectArray[listenerIndex]
                layerManagerEventListenerInterface = (eventListenerInterface)
                layerManagerEventListenerInterface.onDeleteLayerManagerEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
            listenerIndex += 1
        end
        end
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        layerManagerEventListenerInterface = (eventListenerInterface)
        layerManagerEventListenerInterface.onCreateLayerManagerEvent(eventObject)
    end

    def self.instance()
        LayerManagerEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LayerManagerEventHandler.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LayerManagerEventHandler.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LayerManagerEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :LayerManagerEvent, "org/allbinary/layer/event/LayerManagerEvent"
autoload :LayerManagerEventListener, "org/allbinary/layer/event/LayerManagerEventListener"
autoload :LayerManagerEventListenerInterface, "org/allbinary/layer/event/LayerManagerEventListenerInterface"

begin
    LayerManagerEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

