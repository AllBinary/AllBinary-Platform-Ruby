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


class InterfaceUtil
    

    def initialize()
    end
    

    def self.viewAll(myClass, lineBreak)
        stringBuffer = StringMaker.new()
        interfaces = myClass.getInterfaces()
        stringBuffer.append(lineBreak)
        stringBuffer.append("Interfaces: ")
        stringBuffer.append(lineBreak)
        (0...interfaces.length).each do |index|
            stringBuffer.append("Interface: ")
            stringBuffer.append(interfaces[index].getName())
            stringBuffer.append(lineBreak)
        end
        return stringBuffer.to_s
    end
    

    def self.getClass(interfaceName, interfaces)
        if interfaceName != nil && interfaces != nil && interfaces.length > 0
            (0...interfaces.length).each do |index|
                if interfaces[index].getName().indexOf(interfaceName) >= 0
                    return interfaces[index]
                end
            end
        end
        return nil
    end
    

    def self.isImplemented(clazz, anyType)
        classes = anyType.class.getInterfaces()
        (0...classes.length).each do |index|
            if clazz.getName().compareTo(classes[index].getName()) == 0
                return true
            end
        end
        return false
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def self.isImplemented(className, anyType)
        classes = anyType.class.getInterfaces()
        (0...classes.length).each do |index|
            if classes[index].getName().indexOf(className) == 0
                return true
            end
        end
        return false
    end
    

    def self.isImplementedView(clazz, anyType)
        stringBuffer = StringMaker.new()
        classes = anyType.class.getInterfaces()
        stringBuffer.append("isImplementedView: \n")
        (0...classes.length).each do |index|
            stringBuffer.append(clazz.getName())
            stringBuffer.append(" should be = ")
            stringBuffer.append(classes[index].getName())
            stringBuffer.append(classes[index].getName())
            stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        end
        return stringBuffer.to_s
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"

