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
# package org.allbinary.game.rand

# require "java/util/Random"
# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"

#Do not use in client code for money related things.
class MyRandomFactory
    attr_accessor :mathUtil, :rand

    def initialize_fields
        @mathUtil = MathUtil.getInstance()
        @rand = nil
    end
    

    def self.getInstance()
        return MyRandomFactory.instance
    end
    

    def initialize()
        initialize_fields
        @rand = Random.new((Time.now.to_f * 1000).to_i)
    end
    

    def setSeed(seed)
        @rand = Random.new(seed)
    end
    

    def getNextInt(range)
        div = (2147483647 / range) + 1
        return ((@rand.nextInt() / div)).to_i
    end
    

    def getAbsoluteNextInt(range)
        return @mathUtil.abs(self.getNextInt(range))
    end
    

    def getAbsoluteNextIntAllowZero(range)
        if range == 0
            return 0
        else
            return @mathUtil.abs(self.getNextInt(range))
        end
    end
    

    def shuffle(intArray)
        self.shuffleTotal(intArray, intArray.length * 7)
    end
    

    def shuffleTotal(intArray, shuffleTotal)
        size = intArray.length
        randomIndex = 0
        randomIndex2 = 0
        value = 0
        (0...shuffleTotal).each do |index|
            randomIndex = self.getAbsoluteNextIntAllowZero(size)
            randomIndex2 = self.getAbsoluteNextIntAllowZero(size)
            value = intArray[randomIndex]
            intArray[randomIndex] = intArray[randomIndex2]
            intArray[randomIndex2] = value
        end
    end
    

    def shuffle2(intArray, intArray2)
        self.shuffle2Total(intArray, intArray2, intArray.length * 7)
    end
    

    def shuffle2Total(intArray, intArray2, shuffleTotal)
        size = intArray.length
        randomIndex = 0
        randomIndex2 = 0
        value = 0
        value2 = 0
        (0...shuffleTotal).each do |index|
            randomIndex = self.getAbsoluteNextIntAllowZero(size)
            randomIndex2 = self.getAbsoluteNextIntAllowZero(size)
            value = intArray[randomIndex]
            value2 = intArray2[randomIndex]
            intArray[randomIndex] = intArray[randomIndex2]
            intArray[randomIndex2] = value
            intArray2[randomIndex] = intArray2[randomIndex2]
            intArray2[randomIndex2] = value2
        end
    end
    

    def self.main(args)
        randomFactory = MyRandomFactory.getInstance()
        stringBuilder = StringMaker.new()
        commonSeps = CommonSeps.getInstance()
        size2 = 100
        (0...size2).each do |index|
            stringBuilder.appendint((randomFactory.getAbsoluteNextInt(3)).to_i).append(commonSeps.COMMA)
        end
        puts(stringBuilder.to_s)
        stringBuilder.delete(0, stringBuilder.length())
        intArray = Array.new(52, 0)
        intArray2 = Array.new(52, 0)
        size = intArray.length
        (0...size).each do |index|
            intArray[index] = index
            intArray2[index] = index
        end
        randomFactory.shuffle2(intArray, intArray2)
        (0...size).each do |index|
            stringBuilder.appendint(intArray[index]).append(commonSeps.COMMA)
        end
        puts(stringBuilder.to_s)
        stringBuilder.delete(0, stringBuilder.length())
        (0...size).each do |index|
            stringBuilder.appendint(intArray2[index]).append(commonSeps.COMMA)
        end
        puts(stringBuilder.to_s)
        found = false
        (0...size).each do |index|
            found = false
            (0...size).each do |index2|
                if intArray[index2] == index
                    found = true
                end
            end
            if !found
                raise RuntimeError.new()
            end
        end
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
require "org/allbinary/string/CommonSeps"
require "java/lang/System"

class MyRandomFactory
    @@instance = MyRandomFactory.new()
end

