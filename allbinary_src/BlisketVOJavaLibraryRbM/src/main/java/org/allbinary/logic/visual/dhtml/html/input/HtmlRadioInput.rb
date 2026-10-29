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

class HtmlRadioInput < HtmlValueInput
    attr_accessor :CHECKED

    def initialize_fields
        @CHECKED = "checked"
    end
    

    def initialize(before, name, value, after)
        super(before, HtmlInputData.getInstance().RADIO, name, value, after)
        initialize_fields
    end
    

    def setSelected()
        self.class.superclass.instance_method(:addAttribute).bind(self).call(@CHECKED, BooleanFactory.getInstance().TRUE_STRING)
    end
end

require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/logic/visual/dhtml/html/input/HtmlInputData"

