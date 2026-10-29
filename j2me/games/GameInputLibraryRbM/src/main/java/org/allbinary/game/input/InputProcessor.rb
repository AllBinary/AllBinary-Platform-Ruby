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
# package org.allbinary.game.input

# require "javax/microedition/lcdui/Canvas"

class InputProcessor
    attr_accessor :gameInputStrings

    def initialize_fields
        @gameInputStrings = GameInputStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def keyPressedByDevice(keyCode, deviceId)
    end
    

    def keyReleasedByDevice(canvas, keyCode, deviceId)
    end
end

require "org/allbinary/game/input/GameInputStrings"

