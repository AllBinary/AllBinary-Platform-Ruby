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
# package org.allbinary.util

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsProperty"

class BasicArrayListUtil
    attr_accessor :NULL_ARRAY_OF_ARRAY, :myRandomFactory, :immutableInstance

    def initialize_fields
        @NULL_ARRAY_OF_ARRAY = Array.new(0) { Array.new(0, nil) }
        @myRandomFactory = MyRandomFactory.getInstance()
        @immutableInstance = ImmutableBasicArrayList.new("Immutable", 0)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return BasicArrayListUtil.instance
    end
    

    def getRandom(list)
        i_random = self.getRandomIndex(list)
        return list.objectArray[i_random]
    end
    

    def getRandomIndex(list)
        return @myRandomFactory.getAbsoluteNextInt(list.size())
    end
    

    def reverse(list)
        lastMinusOneIndex = list.size() - 2
        temp = nil
        size = lastMinusOneIndex / 2
        secondSwapIndex = 0
        (0..size).each do |index|
            secondSwapIndex = lastMinusOneIndex - index
            temp = list.removeAt(index)
            list.addAt(index, list.removeAt(secondSwapIndex))
            list.addAt(secondSwapIndex + 1, temp)
        end
    end
    

    def log(list)
        _S_LABEL = " s: "
        size = list.size()
        stringBuffer = StringMaker.new()
        stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL)
        stringBuffer.appendint(size)
        (size - 1).step(0, -(1)) do |index|
            usedList = list.objectArray[index]
            stringBuffer.append(_S_LABEL)
            stringBuffer.appendint(usedList.size())
        end
        return stringBuffer.to_s
    end
    

    def getImmutableInstance()
        return @immutableInstance
    end
    

    def self.main(args)
        commonPhoneStrings = CommonPhoneStrings.getInstance()
        list = BasicArrayListD.new()
        list.add(commonPhoneStrings.ONE)
        list.add(commonPhoneStrings.TWO)
        list.add(commonPhoneStrings.THREE)
        list.add(commonPhoneStrings.FOUR)
        list.add(commonPhoneStrings.FIVE)
        list.add(commonPhoneStrings.SIX)
        list.add(commonPhoneStrings.SEVEN)
        list.add(commonPhoneStrings.EIGHT)
        list.add(commonPhoneStrings.NINE)
        BasicArrayListUtil.getInstance().reverse(list)
        puts(list.to_s)
    end

    def self.instance()
        BasicArrayListUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BasicArrayListUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BasicArrayListUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicArrayListUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :MyRandomFactory, "org/allbinary/game/rand/MyRandomFactory"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :ImmutableBasicArrayList, "org/allbinary/util/ImmutableBasicArrayList"
require "java/lang/System"

begin
    BasicArrayListUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

