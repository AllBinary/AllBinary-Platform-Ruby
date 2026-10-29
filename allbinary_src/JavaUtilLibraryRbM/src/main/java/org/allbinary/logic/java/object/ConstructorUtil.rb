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

# require "java/lang/reflect/Constructor"

class ConstructorUtil
    

    def initialize()
    end
    

    def self.viewAll(myClass, lineBreak)
        stringBuffer = StringMaker.new()
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
            commonSeps = CommonSeps.getInstance()
            stringBuffer = StringMaker.new()
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

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"

