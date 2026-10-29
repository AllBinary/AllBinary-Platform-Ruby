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
# package org.allbinary.logic.util.event.handler

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"

module BasicEventHandlerInterface
    

    def addListenerInterface(eventListenerInterface)
        raise NotImplementedError
    end
    

    def addListeners(basicArrayList)
        raise NotImplementedError
    end
    

    # throws Exception
    def fireEvent(eventObject)
        raise NotImplementedError
    end
    

    def removeAllListeners()
        raise NotImplementedError
    end
    

    def removeListener(eventListenerInterface)
        raise NotImplementedError
    end
end

require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/util/BasicArrayList"

