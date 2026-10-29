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
# package org.allbinary.android.input.api1

require "org/allbinary/android/input/VirtualKeyboard"
require "org/allbinary/input/event/VirtualKeyboardEventListenerInterface"

class VirtualKeyboardAPI1 < VirtualKeyboard
    include VirtualKeyboardEventListenerInterface
    

    def initialize(activity)
        super()
    end
end

require "android/app/Activity"

class VirtualKeyboardAPI1
    MIN_API = 1
    MAX_API = 2
end

