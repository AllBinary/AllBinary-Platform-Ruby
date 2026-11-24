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

require "java/lang/JavaOverload"
require "org/allbinary/logic/visual/dhtml/html/input/HtmlValueInput"

module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html; module Input

class HtmlLengthInput < HtmlValueInput
    attr_accessor :MAXLENGTH, :SIZE, :length, :size

    def jfields_org_allbinary_logic_visual_dhtml_html_input_HtmlLengthInput
        @MAXLENGTH = "MAXLENGTH"
        @SIZE = "SIZE"
        @length = nil unless instance_variable_defined?(:@length)
        @size = nil unless instance_variable_defined?(:@size)
    end
    

    def initialize(before, type, name, value, after)
        super(before, type, name, value, after)
        jfields_org_allbinary_logic_visual_dhtml_html_input_HtmlLengthInput
    end
    

    def setMaxLength(length)
        self.length = String.new(length)
        addAttribute(@MAXLENGTH, self.length)
    end
    java_overload :setMaxLength, 1
    

    def setSize(size)
        @size = String.new(size)
        addAttribute(@MAXLENGTH, @size)
    end
    java_overload :setSize, 1
end

end; end; end; end; end; end; end

