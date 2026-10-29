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
# package org.allbinary.logic.util.event

require "org/allbinary/logic/util/event/EventListenerInterface"

class NullEventListener
    include EventListenerInterface
    

    def onEvent(eventObject)
    end
end

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class NullEventListener
    NULL_EVENT_LISTENER = NullEventListener.new()
end

