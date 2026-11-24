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
require "org/allbinary/logic/visual/dhtml/html/input/HtmlInput"

module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Html; module Input

class HtmlValueInput < HtmlInput
    attr_accessor :value, :VALUE

    def jfields_org_allbinary_logic_visual_dhtml_html_input_HtmlValueInput
        @value = nil unless instance_variable_defined?(:@value)
        @VALUE = "VALUE"
    end
    

    def initialize(before, type, name, value, after)
        super(before, type, name, after)
        jfields_org_allbinary_logic_visual_dhtml_html_input_HtmlValueInput
        stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @value = stringUtil.EMPTY_STRING
        addAttribute(@VALUE, value)
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

end; end; end; end; end; end; end

