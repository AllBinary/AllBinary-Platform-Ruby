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


class VirtualKeyboardFactory
    

    def self.init(activity)
        _SDK_VERSION = AndroidInfoFactory.getInstance().getVersion()
        if _SDK_VERSION <= 2
            VirtualKeyboardFactory.virtualKeyboard = VirtualKeyboardAPI1.new(activity)
        else
            VirtualKeyboardFactory.virtualKeyboard = VirtualKeyboardAPI3.new(activity)
        end
    end
    

    def self.getInstance()
        return VirtualKeyboardFactory.virtualKeyboard
    end

    def self.virtualKeyboard()
        return defined?(@@virtualKeyboard) ? @@virtualKeyboard : nil
    end

    def self.virtualKeyboard=(value)
        @@virtualKeyboard = value
    end
end

require "org/allbinary/android/AndroidInfoFactory"
require "org/allbinary/android/input/api1/VirtualKeyboardAPI1"
require "org/allbinary/android/input/api3/VirtualKeyboardAPI3"
require "android/app/Activity"
require "org/allbinary/android/input/VirtualKeyboard"

class VirtualKeyboardFactory
    @@virtualKeyboard = VirtualKeyboard::NULL_VIRTUAL_KEYBOARD
end

