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

class NumberTextFieldItemValidator < ValidatorBase
    attr_accessor :textFieldItem, :min, :max, :maxChars

    def initialize_fields
        @textFieldItem = nil
        @min = nil
        @max = nil
        @maxChars = nil
    end
    

    def initialize(textFieldItem, maxChars, min, max)
        super()
        initialize_fields
        @textFieldItem = textFieldItem
        @min = min
        @max = max
        @maxChars = maxChars
    end
    

    def isNumberValid(value)
        return BooleanFactory.getInstance().TRUE
    end
    

    def toNumberVector(value)
        return BasicArrayListD.new()
    end
    

    def isValid()
        result = BooleanFactory.getInstance().TRUE
        string = @textFieldItem.getString()
        textLength = string.length
        if textLength > 0 && textLength < @maxChars
            begin
                Integer(@textFieldItem.getString())
            rescue ArgumentError => e
                result = BooleanFactory.getInstance().FALSE
            end
        else
            if textLength < 1
                result = BooleanFactory.getInstance().FALSE
            elsif textLength > @maxChars
                result = BooleanFactory.getInstance().FALSE
            end
        end
        return result
    end
    

    def toList()
        list = BasicArrayListD.new()
        string = @textFieldItem.getString()
        textLength = string.length
        label = @textFieldItem.getLabel()
        name = label[0...label.length - 2]
        smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        stringMaker = StringMaker.new()
        if textLength > 0 && textLength < @maxChars
            begin
                number = smallIntegerSingletonFactory.createInstance(Integer(@textFieldItem.getString()))
                if number.to_i > @min
                    stringMaker.delete(0, stringMaker.length())
                    list.add(stringMaker.append(name).append(" is to small").to_s)
                elsif number.to_i > @max
                    stringMaker.delete(0, stringMaker.length())
                    list.add(stringMaker.append(name).append(" is to large").to_s)
                end
            rescue ArgumentError => e
                stringMaker.delete(0, stringMaker.length())
                list.add(stringMaker.append(name).append(" is not a number").to_s)
            end
        else
            if textLength < 1
                stringMaker.delete(0, stringMaker.length())
                list.add(stringMaker.append(name).append(" is to short").to_s)
            elsif textLength > @maxChars
                stringMaker.delete(0, stringMaker.length())
                list.add(stringMaker.append(name).append(" is to long").to_s)
            end
        end
        return list
    end
end

require "org/allbinary/graphics/form/item/ABTextFieldItem"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

