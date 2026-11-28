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

module ::Org; module Allbinary; module Util

class BasicArrayListUtil
    attr_accessor :NULL_ARRAY_OF_ARRAY, :myRandomFactory, :immutableInstance

    def jfields_org_allbinary_util_BasicArrayListUtil
        @NULL_ARRAY_OF_ARRAY = Array.new(0) { Array.new(0, nil) }
        @myRandomFactory = ::Org::Allbinary::Game::Rand::MyRandomFactory.getInstance()
        @immutableInstance = ImmutableBasicArrayList.new("Immutable", 0)
    end

    def initialize
        jfields_org_allbinary_util_BasicArrayListUtil
    end
    

    def self.getInstance()
        return @@instance
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
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().TOTAL_LABEL)
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
        commonPhoneStrings = ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance()
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

module ::Org; module Allbinary; module Game; module Rand; autoload :MyRandomFactory, "org/allbinary/game/rand/MyRandomFactory" unless const_defined?(:MyRandomFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false)
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false)
autoload :ImmutableBasicArrayList, "org/allbinary/util/ImmutableBasicArrayList" unless const_defined?(:ImmutableBasicArrayList, false)
require "java/lang/System"

begin
    BasicArrayListUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

