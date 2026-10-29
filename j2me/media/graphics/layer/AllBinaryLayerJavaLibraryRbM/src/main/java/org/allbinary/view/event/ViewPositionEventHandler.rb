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
# package org.allbinary.view.event

require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class ViewPositionEventHandler < BasicEventHandler
    attr_accessor :list

    def initialize_fields
        @list = BasicArrayListD.new()
    end
    

    def self.getInstance()
        return ViewPositionEventHandler::SINGLETON
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def addListener(layerInterface)
        if !@list.contains(layerInterface)
            @list.add(layerInterface)
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
                layerInterface = @list.objectArray[index]
                layerInterface.onChangeEvent(eventObject)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
        super(eventObject)
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        viewPositionEventListenerInterface = (eventListenerInterface)
        viewPositionEventListenerInterface.onChangeEvent(eventObject)
    end
end

require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/view/event/ViewPositionEvent"
require "org/allbinary/view/event/ViewPositionEventListenerInterface"

class ViewPositionEventHandler
    SINGLETON = ViewPositionEventHandler.new()
end

