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

require "java/lang/JavaOverload"
require "org/allbinary/logic/control/validate/ValidatorBase"

module ::Org; module Allbinary; module Graphics; module Form; module Item; module Validation

class NumberTextFieldItemValidator < ::Org::Allbinary::Logic::ControlPackage::Validate::ValidatorBase
    attr_accessor :textFieldItem, :min, :max, :maxChars

    def jfields_org_allbinary_graphics_form_item_validation_NumberTextFieldItemValidator
        @textFieldItem = nil unless instance_variable_defined?(:@textFieldItem)
        @min = nil unless instance_variable_defined?(:@min)
        @max = nil unless instance_variable_defined?(:@max)
        @maxChars = nil unless instance_variable_defined?(:@maxChars)
    end
    

    def initialize(textFieldItem, maxChars, min, max)
        super()
        jfields_org_allbinary_graphics_form_item_validation_NumberTextFieldItemValidator
        @textFieldItem = textFieldItem
        @min = min
        @max = max
        @maxChars = maxChars
    end
    

    def isNumberValid(value)
        return ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().TRUE
    end
    java_overload :isNumberValid, 1
    

    def toNumberVector(value)
        return ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    java_overload :toNumberVector, 1
    

    def isValid()
        result = ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().TRUE
        string = @textFieldItem.getString()
        textLength = string.length
        if textLength > 0 && textLength < @maxChars
            begin
                Integer(@textFieldItem.getString())
            rescue ArgumentError => e
                result = ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE
            end
        else
            if textLength < 1
                result = ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE
            elsif textLength > @maxChars
                result = ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().FALSE
            end
        end
        return result
    end
    java_overload :isValid, 0
    

    def toList()
        list = ::Org::Allbinary::Util::BasicArrayListD.new()
        string = @textFieldItem.getString()
        textLength = string.length
        label = @textFieldItem.getLabel()
        name = label[0...label.length - 2]
        smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
    java_overload :toList, 0
end

module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABTextFieldItem, "org/allbinary/graphics/form/item/ABTextFieldItem" unless const_defined?(:ABTextFieldItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end; end; end

