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
require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Event

class GeographicMapCellPositionEventHandler < ::Org::Allbinary::Logic::Util::Event::Handler::BasicEventHandler
    attr_accessor :list

    def jfields_org_allbinary_media_graphics_geography_map_event_GeographicMapCellPositionEventHandler
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def self.getInstance()
        return GeographicMapCellPositionEventHandler.instance
    end
    

    def initialize()
        super()
        jfields_org_allbinary_media_graphics_geography_map_event_GeographicMapCellPositionEventHandler
    end
    

    def addListener(miniMapLayer)
        if !@list.contains(miniMapLayer)
            @list.add(miniMapLayer)
        end
    end
    java_overload :addListener, 1
    

    def removeAllListeners()
        @list.clear()
        GeographicMapCellPositionEventHandler.superclass.java_super_method(:removeAllListeners, 0).bind(self).call()
    end
    java_overload :removeAllListeners, 0
    

    def removeListener(eventListenerInterface)
        @list.remove(eventListenerInterface)
        GeographicMapCellPositionEventHandler.superclass.java_super_method(:removeListener, 1).bind(self).call(eventListenerInterface)
    end
    java_overload :removeListener, 1
    

    # throws Exception
    def fireEvent(eventObject)
        index = @list.size()
        while (index -= 1) >= 0
            begin
                miniMapLayer = @list.get(index)
                miniMapLayer.onGeographicMapCellPositionEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, ::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
        GeographicMapCellPositionEventHandler.superclass.java_super_method(:fireEvent, 1).bind(self).call(eventObject)
    end
    java_overload :fireEvent, 1
    

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
                @logUtil.put(@commonStrings.EXCEPTION, self, ::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().FIRE_EVENT, e)
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
                @logUtil.put(@commonStrings.EXCEPTION, self, ::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
        end
    end
    java_overload :fireRemoveEvent, 1
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        geographicMapCellPositionEventListenerInterface = (eventListenerInterface)
        geographicMapCellPositionEventListenerInterface.onGeographicMapCellPositionEvent(eventObject)
    end
    java_overload :process, 2

    def self.instance()
        GeographicMapCellPositionEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GeographicMapCellPositionEventHandler.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GeographicMapCellPositionEventHandler.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GeographicMapCellPositionEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Geographic; module Map; autoload :MiniMapLayer, "org/allbinary/game/layer/geographic/map/MiniMapLayer" unless const_defined?(:MiniMapLayer, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface" unless const_defined?(:EventListenerInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
autoload :GeographicMapCellPositionEvent, "org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEvent" unless const_defined?(:GeographicMapCellPositionEvent, false)
autoload :GeographicMapCellPositionEventListenerInterface, "org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEventListenerInterface" unless const_defined?(:GeographicMapCellPositionEventListenerInterface, false)

begin
    GeographicMapCellPositionEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

