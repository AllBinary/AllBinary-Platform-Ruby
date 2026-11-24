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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/form/item/ABTextItem"

module ::Org; module Allbinary; module Graphics; module Form; module Item

class CommandTextItem < ABTextItem
    attr_accessor :command

    def jfields_org_allbinary_graphics_form_item_CommandTextItem
        @command = nil unless instance_variable_defined?(:@command)
    end
    

    def initialize(command, layout, altText, backgroundBasicColor, foregroundBasicColor)
        super(command.getLabel(), layout, altText, backgroundBasicColor, foregroundBasicColor)
        jfields_org_allbinary_graphics_form_item_CommandTextItem
        @command = command
    end
    

    def isFocusable()
        return true
    end
    java_overload :isFocusable, 0
    

    def getCommand()
        return @command
    end
    java_overload :getCommand, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end

end; end; end; end; end

