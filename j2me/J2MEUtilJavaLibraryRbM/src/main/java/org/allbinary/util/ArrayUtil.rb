# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.util

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"

module ::Org; module Allbinary; module Util

class ArrayUtil
    attr_accessor :mathUtil

    def jfields_org_allbinary_util_ArrayUtil
        @mathUtil = ::Org::Allbinary::Logic::MathPackage::MathUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_util_ArrayUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def copyOf(original, newLength)
        return self.copyOfType(original, newLength, original.class)
    end
    

    def copyOfType(original, newLength, newType)
        copy = Array.new(newLength, nil)
        copy[0, @mathUtil.min(original.length, newLength)] = original[0, @mathUtil.min(original.length, newLength)]
        return copy
    end
    

    def copyOfbyte(original, newLength)
        copy = (Array.new(newLength, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) }
        copy[0, @mathUtil.min(original.length, newLength)] = original[0, @mathUtil.min(original.length, newLength)]
        return copy
    end
    

    def copyOfshort(original, newLength)
        copy = (Array.new(newLength, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :S) }
        copy[0, @mathUtil.min(original.length, newLength)] = original[0, @mathUtil.min(original.length, newLength)]
        return copy
    end
    

    def copyOfint(original, newLength)
        copy = (Array.new(newLength, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        copy[0, @mathUtil.min(original.length, newLength)] = original[0, @mathUtil.min(original.length, newLength)]
        return copy
    end
    

    def copyOflong(original, newLength)
        copy = (Array.new(newLength, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :J) }
        copy[0, @mathUtil.min(original.length, newLength)] = original[0, @mathUtil.min(original.length, newLength)]
        return copy
    end
    

    def copyOfchar(original, newLength)
        copy = (Array.new(newLength, "\0")).tap { |java_array| java_array.instance_variable_set(:@java_component, :C) }
        copy[0, @mathUtil.min(original.length, newLength)] = original[0, @mathUtil.min(original.length, newLength)]
        return copy
    end
    

    def copyOffloat(original, newLength)
        copy = (Array.new(newLength, 0.0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :F) }
        copy[0, @mathUtil.min(original.length, newLength)] = original[0, @mathUtil.min(original.length, newLength)]
        return copy
    end
    

    def copyOfdouble(original, newLength)
        copy = (Array.new(newLength, 0.0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :D) }
        copy[0, @mathUtil.min(original.length, newLength)] = original[0, @mathUtil.min(original.length, newLength)]
        return copy
    end
    

    def copyOfboolean(original, newLength)
        copy = (Array.new(newLength, false)).tap { |java_array| java_array.instance_variable_set(:@java_component, :Z) }
        copy[0, @mathUtil.min(original.length, newLength)] = original[0, @mathUtil.min(original.length, newLength)]
        return copy
    end
    

    def reverse(intArray)
        length = intArray.length - 1
        temp = 0
        size = length / 2
        (0..size).each do |index|
            temp = intArray[index]
            intArray[index] = intArray[length - index]
            intArray[length - index] = temp
        end
    end
    

    def flip(intArray, width, height)
        length = height - 1
        temp = 0
        index = 0
        rowIndex = 0
        (0..length / 2).each do |y|
            (0...width).each do |x|
                rowIndex = ((length - y) * width)
                index = x + (y * width)
                temp = intArray[index]
                intArray[index] = intArray[rowIndex + x]
                intArray[rowIndex + x] = temp
            end
        end
    end
    

    def toStringFromTwoDimensionaArray(twoDimensionalIntArray)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        endIndex = twoDimensionalIntArray.length
        endIndex2 = twoDimensionalIntArray[0].length
        (0...endIndex).each do |index|
            stringBuffer.append(commonSeps.BRACE_OPEN)
            (0...endIndex2).each do |index2|
                stringBuffer.appendint(((twoDimensionalIntArray[index][index2]).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
                stringBuffer.append(commonSeps.COMMA_SEP)
            end
            stringBuffer.append(commonSeps.BRACE_CLOSE)
            stringBuffer.append(commonSeps.NEW_LINE)
        end
        return stringBuffer.to_s
    end
    

    def toStringFromObjectArray(objectArray)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        (0...objectArray.length).each do |index|
            stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(objectArray[index]))
            stringBuffer.append(commonSeps.COMMA_SEP)
        end
        return stringBuffer.to_s
    end
    

    def toStringFromByteArray(byteArray)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        (0...byteArray.length).each do |index|
            stringBuffer.appendbyte(byteArray[index])
            stringBuffer.append(commonSeps.COMMA_SEP)
        end
        return stringBuffer.to_s
    end

    def self.instance()
        ArrayUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ArrayUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ArrayUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ArrayUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module MathPackage; autoload :MathUtil, "org/allbinary/logic/math/MathUtil" unless const_defined?(:MathUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
require "java/lang/System"

begin
    ArrayUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

