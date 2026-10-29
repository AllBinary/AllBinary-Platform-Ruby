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
# package org.allbinary.graphics.form.item

# require "javax/microedition/lcdui/Command"
require "org/allbinary/graphics/form/item/ABTextItem"

class CommandTextItem < ABTextItem
    attr_accessor :command

    def initialize_fields
        @command = nil
    end
    

    def initialize(command, layout, altText, backgroundBasicColor, foregroundBasicColor)
        super(command.getLabel(), layout, altText, backgroundBasicColor, foregroundBasicColor)
        initialize_fields
        @command = command
    end
    

    def isFocusable()
        return true
    end
    

    def getCommand()
        return @command
    end
end

require "org/allbinary/graphics/color/BasicColor"

