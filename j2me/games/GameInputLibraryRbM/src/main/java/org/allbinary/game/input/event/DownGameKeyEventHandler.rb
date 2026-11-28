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
# package org.allbinary.game.input.event

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/game/input/event/DownGameKeyEventHandlerBase"

module ::Org; module Allbinary; module Game; module Input; module Event

class DownGameKeyEventHandler < DownGameKeyEventHandlerBase
    attr_accessor :playerInputIdFactory

    def jfields_org_allbinary_game_input_event_DownGameKeyEventHandler
        @playerInputIdFactory = ::Org::Allbinary::Game::Input::LocalPlayerInputIdFactory.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def getInstanceForDevice(deviceId)
        playerInputId = @playerInputIdFactory.getPlayerForDevice(deviceId)
        return @@instanceArray[playerInputId]
    end
    java_overload :getInstanceForDevice, 1
    

    def getInstanceForPlayer(playerInputId)
        return @@instanceArray[playerInputId]
    end
    java_overload :getInstanceForPlayer, 1
    

    def initialize()
        super()
        jfields_org_allbinary_game_input_event_DownGameKeyEventHandler
    end
    

    def removeAllListeners()
        DownGameKeyEventHandler.superclass.java_super_method(:removeAllListeners, 0).bind(self).call()
        (@@instanceArray.length - 1).step(0, -(1)) do |index|
            @@instanceArray[index].removeAllListeners()
        end
    end
    java_overload :removeAllListeners, 0
    

    def removeListenerSingleThreaded(eventListenerInterface)
        DownGameKeyEventHandler.superclass.java_super_method(:removeListenerSingleThreaded, 1).bind(self).call(eventListenerInterface)
        (@@instanceArray.length - 1).step(0, -(1)) do |index|
            @@instanceArray[index].removeListenerSingleThreaded(eventListenerInterface)
        end
    end
    java_overload :removeListenerSingleThreaded, 1
    

    def removeListener(eventListenerInterface)
        java_monitor.synchronize do
        DownGameKeyEventHandler.superclass.java_super_method(:removeListener, 1).bind(self).call(eventListenerInterface)
        (@@instanceArray.length - 1).step(0, -(1)) do |index|
            @@instanceArray[index].removeListener(eventListenerInterface)
        end
        end
    end
    java_overload :removeListener, 1

    def self.instance()
        DownGameKeyEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DownGameKeyEventHandler.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.instanceArray()
        DownGameKeyEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceArray) ? @@instanceArray : nil
    end

    def self.instanceArray=(value)
        DownGameKeyEventHandler.java_static_fields unless @java_static_fields_started
        @@instanceArray = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DownGameKeyEventHandler.new()
            @@instanceArray = [DownGameKeyEventHandlerBase.new(), DownGameKeyEventHandlerBase.new(), DownGameKeyEventHandlerBase.new(), DownGameKeyEventHandlerBase.new(), DownGameKeyEventHandlerBase.new(), DownGameKeyEventHandlerBase.new()]
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DownGameKeyEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Input; autoload :LocalPlayerInputIdFactory, "org/allbinary/game/input/LocalPlayerInputIdFactory" unless const_defined?(:LocalPlayerInputIdFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface" unless const_defined?(:EventListenerInterface, false); end; end; end; end; end

begin
    DownGameKeyEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

