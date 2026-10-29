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
# package org.allbinary.logic.java.bool


class BooleanUtil
    attr_accessor :tsUtil

    def initialize_fields
        @tsUtil = TsUtil.getInstance()
    end
    

    def self.getInstance()
        return BooleanUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def getFromString(booleanString)
        stringValidationUtil = StringValidationUtil.getInstance()
        booleanFactory = BooleanFactory.getInstance()
        if stringValidationUtil.isEmpty(booleanString)
            return false
        end
        booleanStringLowerCase = booleanString.downcase
        if @tsUtil.compareTo(booleanStringLowerCase, booleanFactory.TRUE_STRING) == 0
            return true
        elsif @tsUtil.compareTo(booleanStringLowerCase, booleanFactory.FALSE_STRING) == 0
            return false
        else
            raise StandardError.new("Invalid booleanString - Must be true or false")
        end
    end
    

    # throws Exception
    def isStringBoolean(booleanString)
        booleanFactory = BooleanFactory.getInstance()
        booleanStringLowerCase = booleanString.downcase
        if (booleanStringLowerCase <=> booleanFactory.TRUE_STRING) == 0 || (booleanStringLowerCase <=> booleanFactory.FALSE_STRING) == 0
            return true
        end
        return false
    end
    

    def toStringFromBooleanArray(booleanArray)
        stringMaker = StringMaker.new()
        size = booleanArray.length
        (0...size).each do |index|
            stringMaker.appendboolean(booleanArray[index])
        end
        return stringMaker.to_s
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/java/bool/BooleanFactory"

class BooleanUtil
    @@instance = BooleanUtil.new()
end

