# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.util

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"

class ArrayUtil
    attr_accessor :mathUtil

    def initialize_fields
        @mathUtil = MathUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ArrayUtil.instance
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
        copy = Array.new(newLength, 0)
        copy[0, @mathUtil.min(original.length, newLength)] = original[0, @mathUtil.min(original.length, newLength)]
        return copy
    end
    

    def copyOfshort(original, newLength)
        copy = Array.new(newLength, 0)
        copy[0, @mathUtil.min(original.length, newLength)] = original[0, @mathUtil.min(original.length, newLength)]
        return copy
    end
    

    def copyOfint(original, newLength)
        copy = Array.new(newLength, 0)
        copy[0, @mathUtil.min(original.length, newLength)] = original[0, @mathUtil.min(original.length, newLength)]
        return copy
    end
    

    def copyOflong(original, newLength)
        copy = Array.new(newLength, 0)
        copy[0, @mathUtil.min(original.length, newLength)] = original[0, @mathUtil.min(original.length, newLength)]
        return copy
    end
    

    def copyOfchar(original, newLength)
        copy = Array.new(newLength, "\0")
        copy[0, @mathUtil.min(original.length, newLength)] = original[0, @mathUtil.min(original.length, newLength)]
        return copy
    end
    

    def copyOffloat(original, newLength)
        copy = Array.new(newLength, 0.0)
        copy[0, @mathUtil.min(original.length, newLength)] = original[0, @mathUtil.min(original.length, newLength)]
        return copy
    end
    

    def copyOfdouble(original, newLength)
        copy = Array.new(newLength, 0.0)
        copy[0, @mathUtil.min(original.length, newLength)] = original[0, @mathUtil.min(original.length, newLength)]
        return copy
    end
    

    def copyOfboolean(original, newLength)
        copy = Array.new(newLength, false)
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
        stringBuffer = StringMaker.new()
        commonSeps = CommonSeps.getInstance()
        endIndex = twoDimensionalIntArray.length
        endIndex2 = twoDimensionalIntArray[0].length
        (0...endIndex).each do |index|
            stringBuffer.append(commonSeps.BRACE_OPEN)
            (0...endIndex2).each do |index2|
                stringBuffer.appendint((twoDimensionalIntArray[index][index2]).to_i)
                stringBuffer.append(commonSeps.COMMA_SEP)
            end
            stringBuffer.append(commonSeps.BRACE_CLOSE)
            stringBuffer.append(commonSeps.NEW_LINE)
        end
        return stringBuffer.to_s
    end
    

    def toStringFromObjectArray(objectArray)
        stringBuffer = StringMaker.new()
        commonSeps = CommonSeps.getInstance()
        (0...objectArray.length).each do |index|
            stringBuffer.append(StringUtil.getInstance().toString(objectArray[index]))
            stringBuffer.append(commonSeps.COMMA_SEP)
        end
        return stringBuffer.to_s
    end
    

    def toStringFromByteArray(byteArray)
        stringBuffer = StringMaker.new()
        commonSeps = CommonSeps.getInstance()
        (0...byteArray.length).each do |index|
            stringBuffer.appendbyte(byteArray[index])
            stringBuffer.append(commonSeps.COMMA_SEP)
        end
        return stringBuffer.to_s
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/math/MathUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonSeps"
require "java/lang/System"

class ArrayUtil
    @@instance = ArrayUtil.new()
end

