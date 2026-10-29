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
# package org.allbinary.logic.java.anyType.clazz


class ClassUtil
    

    def initialize()
    end
    

    def self.viewAll(anyType, lineBreak)
        if anyType != nil
            return ClassUtil.viewAll(anyType.class, lineBreak)
        else
            return "Object Null"
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def self.viewAll(myClass, lineBreak)
        if myClass != nil
            stringBuffer = StringMaker.new()
            classes = myClass.getClasses()
            stringBuffer.append(lineBreak)
            stringBuffer.append("Class: ")
            stringBuffer.append(myClass.getName())
            stringBuffer.append(" uses ")
            stringBuffer.appendint(classes.length)
            stringBuffer.append(" other classes")
            stringBuffer.append(lineBreak)
            stringBuffer.append(lineBreak)
            stringBuffer.append("Classes: ")
            stringBuffer.append(lineBreak)
            (0...classes.length).each do |index|
                stringBuffer.append("Class: ")
                stringBuffer.append(classes[index].getName())
                stringBuffer.append(lineBreak)
            end
            stringBuffer.append(InterfaceUtil.viewAll(myClass, lineBreak))
            stringBuffer.append(lineBreak)
            stringBuffer.append(ConstructorUtil.viewAll(myClass, lineBreak))
            stringBuffer.append(lineBreak)
            stringBuffer.append(MethodUtil.viewAll(myClass, lineBreak))
            return stringBuffer.to_s
        else
            return "Class Null"
        end
    end
end

require "org/allbinary/logic/java/anyType/ConstructorUtil"
require "org/allbinary/logic/java/anyType/InterfaceUtil"
require "org/allbinary/logic/java/anyType/MethodUtil"
require "org/allbinary/logic/string/StringMaker"

