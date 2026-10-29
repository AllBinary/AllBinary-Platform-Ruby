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
# package org.allbinary.layer.event

require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class ScrollMapEventHandler < BasicEventHandler
    

    def initialize()
        super()
    end
    

    def self.getInstance()
        return ScrollMapEventHandler::SINGLETON
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        scrollMapEventListenerInterface = (eventListenerInterface)
        scrollMapEventListenerInterface.onMoveEvent(eventObject)
    end
end

require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/layer/event/ScrollMapEvent"
require "org/allbinary/layer/event/ScrollMapEventListenerInterface"

class ScrollMapEventHandler
    SINGLETON = ScrollMapEventHandler.new()
end

