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

class HtmlRadioInput < HtmlValueInput
    attr_accessor :CHECKED

    def jfields_org_allbinary_logic_visual_dhtml_html_input_HtmlRadioInput
        @CHECKED = "checked"
    end
    

    def initialize(before, name, value, after)
        super(before, HtmlInputData.getInstance().RADIO, name, value, after)
        jfields_org_allbinary_logic_visual_dhtml_html_input_HtmlRadioInput
    end
    

    def setSelected()
        HtmlRadioInput.superclass.java_super_method(:addAttribute, 2).bind(self).call(@CHECKED, ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().TRUE_STRING)
    end
    java_overload :setSelected, 0
end

module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
autoload :HtmlInputData, "org/allbinary/logic/visual/dhtml/html/input/HtmlInputData" unless const_defined?(:HtmlInputData, false)

end; end; end; end; end; end; end

