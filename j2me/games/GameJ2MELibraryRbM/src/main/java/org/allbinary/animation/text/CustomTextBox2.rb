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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/form/item/CustomTextBox"

module ::Org; module Allbinary; module Animation; module Text

class CustomTextBox2 < ::Org::Allbinary::Graphics::Form::Item::CustomTextBox
    

    def initialize(cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
        super(cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
        self.getTextFieldItem().setFocus(true)
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end

end; end; end; end

