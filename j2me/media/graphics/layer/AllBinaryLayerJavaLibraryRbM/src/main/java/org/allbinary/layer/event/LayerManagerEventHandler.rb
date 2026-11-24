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
require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"

module ::Org; module Allbinary; module Layer; module Event

class LayerManagerEventHandler < ::Org::Allbinary::Logic::Util::Event::Handler::BasicEventHandler
    attr_accessor :list, :CREATE, :DELETE

    def jfields_org_allbinary_layer_event_LayerManagerEventHandler
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        @CREATE = "Create"
        @DELETE = "Delete"
    end
    

    def self.getInstance()
        return LayerManagerEventHandler.instance
    end
    

    def initialize()
        super()
        jfields_org_allbinary_layer_event_LayerManagerEventHandler
    end
    

    def addListener(layerManagerEventListener)
        if !@list.contains(layerManagerEventListener)
            @list.add(layerManagerEventListener)
        end
    end
    java_overload :addListener, 1
    

    def removeAllListeners()
        @list.clear()
        LayerManagerEventHandler.superclass.java_super_method(:removeAllListeners, 0).bind(self).call()
    end
    java_overload :removeAllListeners, 0
    

    def removeListener(eventListenerInterface)
        @list.remove(eventListenerInterface)
        LayerManagerEventHandler.superclass.java_super_method(:removeListener, 1).bind(self).call(eventListenerInterface)
    end
    java_overload :removeListener, 1
    

    # throws Exception
    def fireEvent(eventObject)
        index = @list.size()
        while (index -= 1) >= 0
            begin
                layerManagerEventListener = @list.objectArray[index]
                layerManagerEventListener.onCreateLayerManagerEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, ::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
        LayerManagerEventHandler.superclass.java_super_method(:fireEvent, 1).bind(self).call(eventObject)
    end
    java_overload :fireEvent, 1
    

    # throws Exception
    def fireDeleteEvent(eventObject)
        java_monitor.synchronize do
        index = @list.size()
        while (index -= 1) >= 0
            begin
                layerManagerEventListener = @list.objectArray[index]
                layerManagerEventListener.onDeleteLayerManagerEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, ::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().FIRE_EVENT, e)
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
                @logUtil.put(@commonStrings.EXCEPTION, self, ::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().FIRE_EVENT, e)
            end
            listenerIndex += 1
        end
        end
    end
    java_overload :fireDeleteEvent, 1
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        layerManagerEventListenerInterface = (eventListenerInterface)
        layerManagerEventListenerInterface.onCreateLayerManagerEvent(eventObject)
    end
    java_overload :process, 2

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

module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface" unless const_defined?(:EventListenerInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :LayerManagerEvent, "org/allbinary/layer/event/LayerManagerEvent" unless const_defined?(:LayerManagerEvent, false)
autoload :LayerManagerEventListener, "org/allbinary/layer/event/LayerManagerEventListener" unless const_defined?(:LayerManagerEventListener, false)
autoload :LayerManagerEventListenerInterface, "org/allbinary/layer/event/LayerManagerEventListenerInterface" unless const_defined?(:LayerManagerEventListenerInterface, false)

begin
    LayerManagerEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

