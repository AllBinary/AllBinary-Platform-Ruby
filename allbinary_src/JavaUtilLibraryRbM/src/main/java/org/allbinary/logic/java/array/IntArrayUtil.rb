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
# package org.allbinary.logic.java.array


module ::Org; module Allbinary; module Logic; module Java; module ArrayPackage

class IntArrayUtil
    

    def initialize()
    end
    

    def self.toString_j1_1(array)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        (0...array.length).each do |index|
            stringBuffer.appendint(array[index])
            if index < array.length
                stringBuffer.append(", ")
            end
        end
        return stringBuffer.to_s
    end
    

    def self.toString_j1_2(array)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        (0...array.length).each do |index|
            stringBuffer.append("{")
            (0...array[index].length).each do |index2|
                stringBuffer.appendint(((array[index][index2]).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                if index2 < array[index].length - 1
                    stringBuffer.append(", ")
                end
            end
            stringBuffer.append("}")
            if index < array.length - 1
                stringBuffer.append(", \n")
            end
        end
        return stringBuffer.to_s
    end
    

    def self.toString_j1_3(array)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        (0...array.length).each do |index|
            stringBuffer.append("{")
            (0...array[index].length).each do |index2|
                stringBuffer.append("{")
                (0...array[index][index2].length).each do |index3|
                    stringBuffer.appendint(((array[index][index2][index3]).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                    if index3 < array[index][index2].length - 1
                        stringBuffer.append(", ")
                    end
                end
                stringBuffer.append("}")
                if index2 < array[index].length - 1
                    stringBuffer.append(", ")
                end
            end
            stringBuffer.append("}")
            if index < array.length - 1
                stringBuffer.append(", \n")
            end
        end
        return stringBuffer.to_s
    end

    def self.toString(*java_overload_args)
        return toString_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method toString takes #{java_overload_args.length} arguments"
    end

    def self.toString_j1(*java_overload_args)
        return toString_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || (java_overload_args[0].is_a?(::Array) && (java_overload_args[0].instance_variable_get(:@java_component) || :I) == :I && (java_overload_args[0].empty? || java_overload_args[0][0].is_a?(::Integer))))
        return toString_j1_2(*java_overload_args) if true && (java_overload_args[0].nil? || (java_overload_args[0].is_a?(::Array) && (java_overload_args[0].empty? || (java_overload_args[0][0].nil? || java_overload_args[0][0].is_a?(::Array)))))
        return toString_j1_3(*java_overload_args)
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

end; end; end; end; end

