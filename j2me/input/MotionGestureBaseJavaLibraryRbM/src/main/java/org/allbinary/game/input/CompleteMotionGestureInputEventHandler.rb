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

require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class CompleteMotionGestureInputEventHandler < BasicEventHandler
    attr_accessor :list

    def initialize_fields
        @list = BasicArrayListD.new()
    end
    

    def self.getInstance()
        return CompleteMotionGestureInputEventHandler::SINGLETON
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def addListener(completeMotionGestureInputEventListener)
        if !@list.contains(completeMotionGestureInputEventListener)
            @list.add(completeMotionGestureInputEventListener)
        end
    end
    

    def removeAllListeners()
        @list.clear()
        super()
    end
    

    def removeListener(eventListenerInterface)
        @list.remove(eventListenerInterface)
        super(eventListenerInterface)
    end
    

    # throws Exception
    def fireEvent(eventObject)
        index = @list.size()
        while (index -= 1) >= 0
            begin
                completeMotionGestureInputEventListener = @list.objectArray[index]
                completeMotionGestureInputEventListener.onCompleteMotionGestureInputEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
        super(eventObject)
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        completeMotionGestureInputEventListenerInterface = eventListenerInterface
        completeMotionGestureInputEventListenerInterface.onCompleteMotionGestureInputEvent(eventObject)
    end
end

require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/input/CompleteMotionGestureInputEvent"
require "org/allbinary/game/input/CompleteMotionGestureInputEventListener"
require "org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface"

class CompleteMotionGestureInputEventHandler
    SINGLETON = CompleteMotionGestureInputEventHandler.new()
end

