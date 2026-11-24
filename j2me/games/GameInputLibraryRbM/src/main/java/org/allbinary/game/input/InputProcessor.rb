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


module ::Org; module Allbinary; module Game; module Input

class InputProcessor
    attr_accessor :gameInputStrings

    def jfields_org_allbinary_game_input_InputProcessor
        @gameInputStrings = GameInputStrings.getInstance()
    end

    def initialize
        jfields_org_allbinary_game_input_InputProcessor
    end
    

    def keyPressedByDevice(keyCode, deviceId)
    end
    

    def keyReleasedByDevice(canvas, keyCode, deviceId)
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
autoload :GameInputStrings, "org/allbinary/game/input/GameInputStrings" unless const_defined?(:GameInputStrings, false)

end; end; end; end

