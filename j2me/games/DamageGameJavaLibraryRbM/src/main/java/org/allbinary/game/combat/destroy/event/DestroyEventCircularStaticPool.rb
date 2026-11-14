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
# package org.allbinary.game.combat.destroy.event


class DestroyEventCircularStaticPool
    attr_accessor :EVENT_POOL

    def initialize_fields
        @EVENT_POOL = AllBinaryEventCircularPool.new(20)
    end
    

    def self.getInstance()
        return DestroyEventCircularStaticPool.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def init(combatGameCanvas)
        @EVENT_POOL.initAllBinaryEventCircularPool(DestroyEventFactory.new(combatGameCanvas))
    end
    

    # throws Exception
    def getInstanceForLayer(layerInterface)
        destroyedEvent = @EVENT_POOL.getNextInstance()
        destroyedEvent.setLayerInterfaceForCircularStaticPool(layerInterface)
        return destroyedEvent
    end

    def self.instance()
        DestroyEventCircularStaticPool.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DestroyEventCircularStaticPool.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DestroyEventCircularStaticPool.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DestroyEventCircularStaticPool"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :AllBinaryEventCircularPool, "org/allbinary/logic/util/event/AllBinaryEventCircularPool"
autoload :DestroyEventFactory, "org/allbinary/game/combat/destroy/event/DestroyEventFactory"
autoload :DestroyedEvent, "org/allbinary/game/combat/destroy/event/DestroyedEvent"

begin
    DestroyEventCircularStaticPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

