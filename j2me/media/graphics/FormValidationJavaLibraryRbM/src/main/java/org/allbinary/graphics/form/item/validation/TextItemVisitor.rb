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
# package org.allbinary.graphics.form.item.validation

require "org/allbinary/logic/util/visitor/Visitor"

class TextItemVisitor < Visitor
    

    def initialize()
        super()
    end
    

    def visit(anyType)
        value = anyType
        if value.length < 2
            return BooleanFactory.getInstance().TRUE
        else
            return BooleanFactory.getInstance().FALSE
        end
    end
end

require "org/allbinary/logic/java/bool/BooleanFactory"

