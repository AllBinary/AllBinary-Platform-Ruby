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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/util/event/AllBinaryEventCircularPool"
require "org/allbinary/game/combat/destroy/event/DestroyEventFactory"
require "org/allbinary/game/combat/destroy/event/DestroyedEvent"

class DestroyEventCircularStaticPool
    @@instance = DestroyEventCircularStaticPool.new()
end

