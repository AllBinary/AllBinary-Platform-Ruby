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
# package org.allbinary.logic.java.anyType

require "java/lang/JavaClass"
# require "java/lang/reflect/Constructor"

module ::Org; module Allbinary; module Logic; module Java; module AnyType

class ConstructorUtil
    

    def initialize()
    end
    

    def self.viewAll(myClass, lineBreak)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        constructor = myClass.getConstructors()
        stringBuffer.append("Constructors: ")
        stringBuffer.append(lineBreak)
        (0...constructor.length).each do |index|
            stringBuffer.append(ConstructorUtil.view(constructor[index], lineBreak))
        end
        return stringBuffer.to_s
    end
    

    def self.view(constructor, lineBreak)
        if constructor != nil
            commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(constructor.getName())
            classes = constructor.getParameterTypes()
            (0...classes.length).each do |index|
                stringBuffer.append(commonSeps.SPACE)
                stringBuffer.append(classes[index].getName())
                stringBuffer.append(commonSeps.COLON)
                stringBuffer.appendint(index)
            end
            stringBuffer.append(lineBreak)
            return stringBuffer.to_s
        else
            return "Constructor Null"
        end
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

end; end; end; end; end

