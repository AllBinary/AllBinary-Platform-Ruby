# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.input.mapping.event

require "java/lang/JavaOverload"
require "org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface"

module ::Org; module Allbinary; module Game; module Input; module Mapping; module Event

class NullInputMappingEventListener
    include InputMappingEventListenerInterface
    

    # throws Exception
    def onInputMappingEvent(inputMappingEvent)
    end
    java_overload :onInputMappingEvent, 1
    

    def onEvent(eventObject)
    end
    java_overload :onEvent, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_INPUT_MAPPING_EVENT_LISTENER, NullInputMappingEventListener.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullInputMappingEventListener"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_INPUT_MAPPING_EVENT_LISTENER].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
autoload :InputMappingEvent, "org/allbinary/game/input/mapping/event/InputMappingEvent" unless const_defined?(:InputMappingEvent, false)

begin
    NullInputMappingEventListener.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

