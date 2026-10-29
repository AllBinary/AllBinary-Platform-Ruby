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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/util/event/AllBinaryEventCircularPool"
require "org/allbinary/game/tracking/TrackingEvent"
require "org/allbinary/game/tracking/TrackingEventFactory"

class TrackingEventCircularStaticPool
    @@instance = TrackingEventCircularStaticPool.new()
end

