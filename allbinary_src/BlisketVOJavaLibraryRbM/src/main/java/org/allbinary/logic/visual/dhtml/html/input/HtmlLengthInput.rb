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
# package org.allbinary.logic.visual.dhtml.html.input

require "org/allbinary/logic/visual/dhtml/html/input/HtmlValueInput"

class HtmlLengthInput < HtmlValueInput
    attr_accessor :MAXLENGTH, :SIZE, :length, :size

    def initialize_fields
        @MAXLENGTH = "MAXLENGTH"
        @SIZE = "SIZE"
        @length = nil
        @size = nil
    end
    

    def initialize(before, type, name, value, after)
        super(before, type, name, value, after)
        initialize_fields
    end
    

    def setMaxLength(length)
        self.length = String.new(length)
        addAttribute(@MAXLENGTH, self.length)
    end
    

    def setSize(size)
        @size = String.new(size)
        addAttribute(@MAXLENGTH, @size)
    end
end

