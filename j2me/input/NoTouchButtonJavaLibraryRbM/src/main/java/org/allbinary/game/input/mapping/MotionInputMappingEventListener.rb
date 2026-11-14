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
# package org.allbinary.game.input.mapping

require "org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface"

class MotionInputMappingEventListener
    include InputMappingEventListenerInterface
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    # throws Exception
    def onInputMappingEvent(inputMappingEvent)
    end
end

autoload :InputMappingEvent, "org/allbinary/game/input/mapping/event/InputMappingEvent"
autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"

