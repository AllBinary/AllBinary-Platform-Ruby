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
# package org.allbinary.game.displayable.canvas

# require "javax/microedition/lcdui/Canvas"

class CanvasUtil
    

    def initialize()
    end
    

    def self.getKeyName(key)
        commonPhoneStrings = CommonPhoneStrings.getInstance()
        if key == Canvas::UP
            return commonPhoneStrings.UP
        elsif key == Canvas::DOWN
            return commonPhoneStrings.DOWN
        elsif key == Canvas::RIGHT
            return commonPhoneStrings.RIGHT
        elsif key == Canvas::LEFT
            return commonPhoneStrings.LEFT
        elsif key == Canvas::FIRE
            return commonPhoneStrings.FIRE
        end
        return "UNKNOWN KEY"
    end
end

require "org/allbinary/string/CommonPhoneStrings"

