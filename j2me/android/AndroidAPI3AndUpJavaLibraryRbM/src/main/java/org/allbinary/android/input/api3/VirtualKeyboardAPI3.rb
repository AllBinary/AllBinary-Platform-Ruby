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
# package org.allbinary.android.input.api3

require "org/allbinary/android/input/VirtualKeyboard"
require "org/allbinary/input/event/VirtualKeyboardEventListenerInterface"

class VirtualKeyboardAPI3 < VirtualKeyboard
    include VirtualKeyboardEventListenerInterface
    attr_accessor :virtualKeyboard, :activity, :showVirtualKeyboardRunnable, :hideVirtualKeyboardRunnable

    def initialize_fields
        @virtualKeyboard = false
        @activity = nil
        @showVirtualKeyboardRunnable = nil
        @hideVirtualKeyboardRunnable = nil
    end
    

    def initialize(activity)
        super()
        initialize_fields
        @activity = activity
        @showVirtualKeyboardRunnable = ShowVirtualKeyboardRunnable.new(@activity)
        @hideVirtualKeyboardRunnable = HideVirtualKeyboardRunnable.new(@activity)
        virtualKeyboardEventHandler = VirtualKeyboardEventHandler.getInstance()
        virtualKeyboardEventHandler.removeAllListeners()
        virtualKeyboardEventHandler.addListenerInterface(self)
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def onVirtualKeyboardEvent(virtualKeyboardEvent)
        isShow = virtualKeyboardEvent.getSource()
        if isShow
            self.showVirtualKeyboard()
        else
            self.hideVirtualKeyboard()
        end
    end
    

    def forceHide()
        self.hideVirtualKeyboard()
    end
    

    def hide()
        if @virtualKeyboard
            self.forceHide()
        end
    end
    

    def showVirtualKeyboard()
        @activity.runOnUiThread(@showVirtualKeyboardRunnable)
        @virtualKeyboard = true
    end
    

    def hideVirtualKeyboard()
        @activity.runOnUiThread(@hideVirtualKeyboardRunnable)
        @virtualKeyboard = false
    end
end

require "android/app/Activity"
require "org/allbinary/input/event/VirtualKeyboardEvent"
require "org/allbinary/input/event/VirtualKeyboardEventHandler"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/android/input/api3/HideVirtualKeyboardRunnable"
require "org/allbinary/android/input/api3/ShowVirtualKeyboardRunnable"
require "java/lang/Runnable"

class VirtualKeyboardAPI3
    MAX_API = 2147483647
    MIN_API = 3
end

