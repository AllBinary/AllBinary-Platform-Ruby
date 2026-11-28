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
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"

module ::Org; module Allbinary; module Game; module Input

class CompleteMotionGestureInputEventHandler < ::Org::Allbinary::Logic::Util::Event::Handler::BasicEventHandler
    attr_accessor :list

    def jfields_org_allbinary_game_input_CompleteMotionGestureInputEventHandler
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def self.getInstance()
        return SINGLETON
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_input_CompleteMotionGestureInputEventHandler
    end
    

    def addListener(completeMotionGestureInputEventListener)
        if !@list.contains(completeMotionGestureInputEventListener)
            @list.add(completeMotionGestureInputEventListener)
        end
    end
    java_overload :addListener, 1
    

    def removeAllListeners()
        @list.clear()
        CompleteMotionGestureInputEventHandler.superclass.java_super_method(:removeAllListeners, 0).bind(self).call()
    end
    java_overload :removeAllListeners, 0
    

    def removeListener(eventListenerInterface)
        @list.remove(eventListenerInterface)
        CompleteMotionGestureInputEventHandler.superclass.java_super_method(:removeListener, 1).bind(self).call(eventListenerInterface)
    end
    java_overload :removeListener, 1
    

    # throws Exception
    def fireEvent(eventObject)
        index = @list.size()
        while (index -= 1) >= 0
            begin
                completeMotionGestureInputEventListener = @list.objectArray[index]
                completeMotionGestureInputEventListener.onCompleteMotionGestureInputEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, ::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
        CompleteMotionGestureInputEventHandler.superclass.java_super_method(:fireEvent, 1).bind(self).call(eventObject)
    end
    java_overload :fireEvent, 1
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        completeMotionGestureInputEventListenerInterface = eventListenerInterface
        completeMotionGestureInputEventListenerInterface.onCompleteMotionGestureInputEvent(eventObject)
    end
    java_overload :process, 2

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, CompleteMotionGestureInputEventHandler.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CompleteMotionGestureInputEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface" unless const_defined?(:EventListenerInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :CompleteMotionGestureInputEvent, "org/allbinary/game/input/CompleteMotionGestureInputEvent" unless const_defined?(:CompleteMotionGestureInputEvent, false)
autoload :CompleteMotionGestureInputEventListener, "org/allbinary/game/input/CompleteMotionGestureInputEventListener" unless const_defined?(:CompleteMotionGestureInputEventListener, false)
autoload :CompleteMotionGestureInputEventListenerInterface, "org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface" unless const_defined?(:CompleteMotionGestureInputEventListenerInterface, false)

begin
    CompleteMotionGestureInputEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

