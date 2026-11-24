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

module ::Org; module Allbinary; module Logic; module Java; module AnyType

class InterfaceUtil
    

    def initialize()
    end
    

    def self.viewAll(myClass, lineBreak)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
    

    def self.isImplemented_j2_1(clazz, anyType)
        classes = anyType.class.getInterfaces()
        (0...classes.length).each do |index|
            if clazz.java_name.compareTo(classes[index].getName()) == 0
                return true
            end
        end
        return false
    end
    

    def self.isImplemented_j2_2(className, anyType)
        classes = anyType.class.getInterfaces()
        (0...classes.length).each do |index|
            if classes[index].getName().indexOf(className) == 0
                return true
            end
        end
        return false
    end

    def self.isImplemented(*java_overload_args)
        return isImplemented_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method isImplemented takes #{java_overload_args.length} arguments"
    end

    def self.isImplemented_j2(*java_overload_args)
        return isImplemented_j2_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array))
        return isImplemented_j2_2(*java_overload_args)
    end
    

    def self.isImplementedView(clazz, anyType)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        classes = anyType.class.getInterfaces()
        stringBuffer.append("isImplementedView: \n")
        (0...classes.length).each do |index|
            stringBuffer.append(clazz.java_name)
            stringBuffer.append(" should be = ")
            stringBuffer.append(classes[index].getName())
            stringBuffer.append(classes[index].getName())
            stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
        end
        return stringBuffer.to_s
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

end; end; end; end; end

