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
        DestroyedEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DestroyedEventHandler.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DestroyedEventHandler.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DestroyedEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :DestroyedEvent, "org/allbinary/game/combat/destroy/event/DestroyedEvent"
autoload :DestroyedEventListenerInterface, "org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface"

begin
    DestroyedEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

