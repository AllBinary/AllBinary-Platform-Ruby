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

class TextFieldItemValidator < ::Org::Allbinary::Logic::ControlPackage::Validate::ValidatorBase
    attr_accessor :textFieldItem, :min, :max, :allowOnEmpty

    def jfields_org_allbinary_graphics_form_item_validation_TextFieldItemValidator
        @textFieldItem = nil unless instance_variable_defined?(:@textFieldItem)
        @min = nil unless instance_variable_defined?(:@min)
        @max = nil unless instance_variable_defined?(:@max)
        @allowOnEmpty = nil unless instance_variable_defined?(:@allowOnEmpty)
    end
    

    def initialize(textFieldItem, min, max, allowOnEmpty)
        super()
        jfields_org_allbinary_graphics_form_item_validation_TextFieldItemValidator
        @textFieldItem = textFieldItem
        @min = min
        @max = max
        @allowOnEmpty = allowOnEmpty
    end
    

    def isValid()
        booleanFactory = ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance()
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
    java_overload :isValid, 0
    

    def toList()
        list = ::Org::Allbinary::Util::BasicArrayListD.new()
        string = @textFieldItem.getString()
        textLength = string.length
        if textLength > @min && textLength < @max
        else
            label = @textFieldItem.getLabel()
            name = label[0...label.length - 2]
            if textLength < @min
                list.add(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(name).append(" is to short").to_s)
            elsif textLength > @max
                list.add(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(name).append(" is to long").to_s)
            end
        end
        return list
    end
    java_overload :toList, 0
end

module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABTextFieldItem, "org/allbinary/graphics/form/item/ABTextFieldItem" unless const_defined?(:ABTextFieldItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end; end; end

