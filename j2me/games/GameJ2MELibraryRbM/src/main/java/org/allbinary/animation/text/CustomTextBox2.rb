# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.animation.text

# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/Font"
require "org/allbinary/graphics/form/item/CustomTextBox"

class CustomTextBox2 < CustomTextBox
    

    def initialize(cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
        super(cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
        self.getTextFieldItem().setFocus(true)
    end
end

require "org/allbinary/graphics/color/BasicColor"

