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
# package org.allbinary.game.tracking

require "java/lang/Object"

class TrackingEventCircularStaticPool
    attr_accessor :EVENT_POOL

    def initialize_fields
        @EVENT_POOL = AllBinaryEventCircularPool.new(20)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return TrackingEventCircularStaticPool.instance
    end
    

    def init()
        @EVENT_POOL.initAllBinaryEventCircularPool(TrackingEventFactory.new())
    end
    

    # throws Exception
    def getNextInstance(layerInterface)
        java_monitor.synchronize do
        trackingEvent = @EVENT_POOL.getNextInstance()
        trackingEvent.setLayerInterfaceForCircularStaticPool(layerInterface)
        return trackingEvent
        end
    end

    def self.instance()
        TrackingEventCircularStaticPool.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TrackingEventCircularStaticPool.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TrackingEventCircularStaticPool.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TrackingEventCircularStaticPool"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :AllBinaryEventCircularPool, "org/allbinary/logic/util/event/AllBinaryEventCircularPool"
autoload :TrackingEvent, "org/allbinary/game/tracking/TrackingEvent"
autoload :TrackingEventFactory, "org/allbinary/game/tracking/TrackingEventFactory"

begin
    TrackingEventCircularStaticPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

