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
# package org.allbinary.android.input


class VirtualKeyboard
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def onVirtualKeyboardEvent(virtualKeyboardEvent)
    end
    

    def forceHide()
    end
    

    def hide()
    end
end

require "org/allbinary/input/event/VirtualKeyboardEvent"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"

class VirtualKeyboard
    NULL_VIRTUAL_KEYBOARD = VirtualKeyboard.new()
end

