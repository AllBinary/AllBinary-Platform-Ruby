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
# package org.allbinary.input.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"

module ::Org; module Allbinary; module Input; module Event

class VirtualKeyboardEventHandler < ::Org::Allbinary::Logic::Util::Event::Handler::BasicEventHandler
    attr_accessor :SHOW_EVENT, :HIDE_EVENT

    def jfields_org_allbinary_input_event_VirtualKeyboardEventHandler
        @SHOW_EVENT = VirtualKeyboardEvent.new(::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().TRUE)
        @HIDE_EVENT = VirtualKeyboardEvent.new(::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_input_event_VirtualKeyboardEventHandler
    end
    

    def self.getInstance()
        return @@gameKeyEventHandler
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        virtualKeyboardEventListenerInterface = eventListenerInterface
        virtualKeyboardEventListenerInterface.onVirtualKeyboardEvent(eventObject)
    end
    java_overload :process, 2
    

    def open()
        begin
            sleep((120) / 1000.0)
            self.fireEvent(@SHOW_EVENT)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "open", e)
        end
    end
    java_overload :open, 0
    

    # throws Exception
    def close()
        begin
            sleep((120) / 1000.0)
            self.fireEvent(@HIDE_EVENT)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CLOSE, e)
        end
    end
    java_overload :close, 0

    def self.gameKeyEventHandler()
        VirtualKeyboardEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@gameKeyEventHandler) ? @@gameKeyEventHandler : nil
    end

    def self.gameKeyEventHandler=(value)
        VirtualKeyboardEventHandler.java_static_fields unless @java_static_fields_started
        @@gameKeyEventHandler = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@gameKeyEventHandler = VirtualKeyboardEventHandler.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "VirtualKeyboardEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface" unless const_defined?(:EventListenerInterface, false); end; end; end; end; end
autoload :VirtualKeyboardEvent, "org/allbinary/input/event/VirtualKeyboardEvent" unless const_defined?(:VirtualKeyboardEvent, false)
autoload :VirtualKeyboardEventListenerInterface, "org/allbinary/input/event/VirtualKeyboardEventListenerInterface" unless const_defined?(:VirtualKeyboardEventListenerInterface, false)
require "java/lang/Thread"

begin
    VirtualKeyboardEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

