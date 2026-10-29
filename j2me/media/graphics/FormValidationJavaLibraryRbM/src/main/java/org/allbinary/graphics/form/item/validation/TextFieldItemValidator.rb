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

require "org/allbinary/logic/control/validate/ValidatorBase"

class TextFieldItemValidator < ValidatorBase
    attr_accessor :textFieldItem, :min, :max, :allowOnEmpty

    def initialize_fields
        @textFieldItem = nil
        @min = nil
        @max = nil
        @allowOnEmpty = nil
    end
    

    def initialize(textFieldItem, min, max, allowOnEmpty)
        super()
        initialize_fields
        @textFieldItem = textFieldItem
        @min = min
        @max = max
        @allowOnEmpty = allowOnEmpty
    end
    

    def isValid()
        booleanFactory = BooleanFactory.getInstance()
        result = booleanFactory.TRUE
        string = @textFieldItem.getString()
        textLength = string.length
        if (textLength == 0 && @allowOnEmpty) || textLength > @min && textLength < @max
        else
            if textLength < @min
                result = booleanFactory.FALSE
            elsif textLength > @max
                result = booleanFactory.FALSE
            end
        end
        return result
    end
    

    def toList()
        list = BasicArrayListD.new()
        string = @textFieldItem.getString()
        textLength = string.length
        if textLength > @min && textLength < @max
        else
            label = @textFieldItem.getLabel()
            name = label[0...label.length - 2]
            if textLength < @min
                list.add(StringMaker.new().append(name).append(" is to short").to_s)
            elsif textLength > @max
                list.add(StringMaker.new().append(name).append(" is to long").to_s)
            end
        end
        return list
    end
end

require "org/allbinary/graphics/form/item/ABTextFieldItem"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

