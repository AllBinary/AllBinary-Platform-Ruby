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
# package org.allbinary.bounds.event

require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class BoundsChangeEventHandler < BasicEventHandler
    

    def initialize()
        super()
    end
    

    def self.getInstance()
        return BoundsChangeEventHandler::SINGLETON
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        boundsChangeEventListener = eventListenerInterface
        boundsChangeEventListener.onBoundsChangeEvent(eventObject)
    end
end

require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/bounds/event/BoundsChangeEvent"
require "org/allbinary/bounds/event/BoundsChangeEventListener"

class BoundsChangeEventHandler
    SINGLETON = BoundsChangeEventHandler.new()
end

