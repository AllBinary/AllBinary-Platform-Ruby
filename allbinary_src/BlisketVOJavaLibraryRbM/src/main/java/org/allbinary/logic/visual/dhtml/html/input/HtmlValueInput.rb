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

require "org/allbinary/logic/visual/dhtml/html/input/HtmlInput"

class HtmlValueInput < HtmlInput
    attr_accessor :value, :VALUE

    def initialize_fields
        @value = nil
        @VALUE = "VALUE"
    end
    

    def initialize(before, type, name, value, after)
        super(before, type, name, after)
        initialize_fields
        stringUtil = StringUtil.getInstance()
        @value = stringUtil.EMPTY_STRING
        addAttribute(@VALUE, value)
    end
end

require "org/allbinary/logic/string/StringUtil"

