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


module ::Org; module Allbinary; module Game; module Combat; module Destroy; module Event

class DestroyEventCircularStaticPool
    attr_accessor :EVENT_POOL

    def jfields_org_allbinary_game_combat_destroy_event_DestroyEventCircularStaticPool
        @EVENT_POOL = ::Org::Allbinary::Logic::Util::Event::AllBinaryEventCircularPool.new(20)
    end
    

    def self.getInstance()
        return DestroyEventCircularStaticPool.instance
    end
    

    def initialize()
        jfields_org_allbinary_game_combat_destroy_event_DestroyEventCircularStaticPool
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

module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventCircularPool, "org/allbinary/logic/util/event/AllBinaryEventCircularPool" unless const_defined?(:AllBinaryEventCircularPool, false); end; end; end; end; end
autoload :DestroyEventFactory, "org/allbinary/game/combat/destroy/event/DestroyEventFactory" unless const_defined?(:DestroyEventFactory, false)
autoload :DestroyedEvent, "org/allbinary/game/combat/destroy/event/DestroyedEvent" unless const_defined?(:DestroyedEvent, false)

begin
    DestroyEventCircularStaticPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

