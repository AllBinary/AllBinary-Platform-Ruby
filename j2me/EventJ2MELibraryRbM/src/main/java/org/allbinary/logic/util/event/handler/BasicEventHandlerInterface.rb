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
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def addListeners(basicArrayList)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def fireEvent(eventObject)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def removeAllListeners()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def removeListener(eventListenerInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"

