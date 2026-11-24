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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module Java; module AnyType; module Clazz

class ClassUtil
    

    def initialize()
    end
    

    def self.viewAll_j2_1(anyType, lineBreak)
        if anyType != nil
            return ClassUtil.viewAll(anyType.class, lineBreak)
        else
            return "Object Null"
        end
    end
    

    def self.viewAll_j2_2(myClass, lineBreak)
        if myClass != nil
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            classes = myClass.getClasses()
            stringBuffer.append(lineBreak)
            stringBuffer.append("Class: ")
            stringBuffer.append(myClass.java_name)
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
            stringBuffer.append(::Org::Allbinary::Logic::Java::AnyType::InterfaceUtil.viewAll(myClass, lineBreak))
            stringBuffer.append(lineBreak)
            stringBuffer.append(::Org::Allbinary::Logic::Java::AnyType::ConstructorUtil.viewAll(myClass, lineBreak))
            stringBuffer.append(lineBreak)
            stringBuffer.append(::Org::Allbinary::Logic::Java::AnyType::MethodUtil.viewAll(myClass, lineBreak))
            return stringBuffer.to_s
        else
            return "Class Null"
        end
    end

    def self.viewAll(*java_overload_args)
        return viewAll_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method viewAll takes #{java_overload_args.length} arguments"
    end

    def self.viewAll_j2(*java_overload_args)
        return viewAll_j2_2(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String))
        return viewAll_j2_1(*java_overload_args)
    end
end

module ::Org; module Allbinary; module Logic; module Java; module AnyType; autoload :ConstructorUtil, "org/allbinary/logic/java/anyType/ConstructorUtil" unless const_defined?(:ConstructorUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module AnyType; autoload :InterfaceUtil, "org/allbinary/logic/java/anyType/InterfaceUtil" unless const_defined?(:InterfaceUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module AnyType; autoload :MethodUtil, "org/allbinary/logic/java/anyType/MethodUtil" unless const_defined?(:MethodUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

end; end; end; end; end; end

