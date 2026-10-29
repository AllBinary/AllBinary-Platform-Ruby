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

require "org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface"

class NullInputMappingEventListener
    include InputMappingEventListenerInterface
    

    # throws Exception
    def onInputMappingEvent(inputMappingEvent)
    end
    

    def onEvent(eventObject)
    end
end

require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/game/input/mapping/event/InputMappingEvent"

class NullInputMappingEventListener
    NULL_INPUT_MAPPING_EVENT_LISTENER = NullInputMappingEventListener.new()
end

