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

require "org/allbinary/logic/visual/dhtml/html/input/HtmlLengthInput"

class HtmlTextInput < HtmlLengthInput
    

    def initialize(before, name, value, after)
        super(before, HtmlInputData.getInstance().TEXT, name, value, after)
        setSize(19)
        setMaxLength(60)
    end
end

require "org/allbinary/logic/visual/dhtml/html/input/HtmlInputData"

