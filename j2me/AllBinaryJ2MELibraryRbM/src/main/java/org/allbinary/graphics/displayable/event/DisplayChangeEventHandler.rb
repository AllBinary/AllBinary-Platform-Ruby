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
# package org.allbinary.graphics.displayable.event

require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class DisplayChangeEventHandler < BasicEventHandler
    

    def self.getInstance()
        return DisplayChangeEventHandler::SINGLETON
    end
    

    def initialize()
        super()
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        displayChangeEventListener = (eventListenerInterface)
        displayChangeEventListener.onDisplayChangeEvent(eventObject)
    end
end

require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/graphics/displayable/event/DisplayChangeEvent"
require "org/allbinary/graphics/displayable/event/DisplayChangeEventListener"

class DisplayChangeEventHandler
    SINGLETON = DisplayChangeEventHandler.new()
end

