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

require "java/lang/Object"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class DestroyedEventHandler < BasicEventHandler
    attr_accessor :list

    def initialize_fields
        @list = BasicArrayListD.new()
    end
    

    def self.getInstance()
        java_monitor.synchronize do
        return DestroyedEventHandler.instance
        end
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def addListener(collidableDestroyableDamageableLayer)
        if !@list.contains(collidableDestroyableDamageableLayer)
            @list.add(collidableDestroyableDamageableLayer)
        end
    end
    

    def removeAllListeners()
        java_monitor.synchronize do
        @list.clear()
        super()
        end
    end
    

    def removeListener(eventListenerInterface)
        java_monitor.synchronize do
        @list.remove(eventListenerInterface)
        super(eventListenerInterface)
        end
    end
    

    # throws Exception
    def fireEvent(eventObject)
        index = @list.size()
        while (index -= 1) >= 0
            begin
                collidableDestroyableDamageableLayer = @list.objectArray[index]
                collidableDestroyableDamageableLayer.onDestroyed(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
        super(eventObject)
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        destroyedEventListenerInterface = eventListenerInterface
        destroyedEventListenerInterface.onDestroyed(eventObject)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/combat/destroy/event/DestroyedEvent"
require "org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface"

class DestroyedEventHandler
    @@instance = DestroyedEventHandler.new()
end

