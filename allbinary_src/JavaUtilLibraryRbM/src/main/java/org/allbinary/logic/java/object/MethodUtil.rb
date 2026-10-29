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

# require "java/lang/reflect/Method"

class MethodUtil
    

    def initialize()
    end
    

    def self.viewAll(myClass, lineBreak)
        stringBuffer = StringMaker.new()
        method = myClass.getMethods()
        stringBuffer.append("Methods: ")
        stringBuffer.append(lineBreak)
        (0...method.length).each do |index|
            stringBuffer.append(method[index].getReturnType().getName())
            stringBuffer.append(" ")
            stringBuffer.append(method[index].getName())
            stringBuffer.append("(")
            ParamsUtil.viewParams(method[index].getParameterTypes())
            stringBuffer.append(")")
            stringBuffer.append(lineBreak)
        end
        return stringBuffer.to_s
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/java/anyType/ParamsUtil"

