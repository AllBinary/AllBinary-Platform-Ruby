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
# package org.allbinary.logic.string


class StringValidationUtil
    attr_accessor :stringUtil, :tsUtil

    def initialize_fields
        @stringUtil = StringUtil.getInstance()
        @tsUtil = TsUtil.getInstance()
    end
    

    def self.getInstance()
        return StringValidationUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def containsSpaces(value)
        if (value.index(" ") || -1) >= 0
            return true
        end
        return false
    end
    

    def isNumber(value)
        numberOfDecimalPoints = 0
        (0...value.length).each do |index|
            digit = value[index]
            if !self.isNumberFromChar(digit) && digit != "."
                return false
            end
            if digit == "."
                numberOfDecimalPoints += 1
                if numberOfDecimalPoints > 1
                    return false
                end
            end
        end
        return true
    end
    

    def isNumberFromChar(digit)
        if digit != "0" && digit != "1" && digit != "2" && digit != "3" && digit != "4" && digit != "5" && digit != "6" && digit != "7" && digit != "8" && digit != "9"
            return false
        end
        return true
    end
    

    def isValidRequired(value, min, max)
        if value == nil || value.length < min || value.length > max
            return false
        end
        return true
    end
    

    def isValidRequiredNumber(value, min, max)
        if self.isEmpty(value) || value.length < min || value.length > max
            return false
        end
        if !self.isNumber(value)
            return false
        end
        return true
    end
    

    def isValidNotRequired(value, min, max)
        if value != nil
            if value.length < min || value.length > max
                return false
            end
        end
        return true
    end
    

    def isValidNotRequiredNumber(value, min, max)
        if value != nil
            if @tsUtil.compareTo(value, @stringUtil.NULL_STRING) == 0 || value.length < min || value.length > max
                return false
            end
            if !self.isNumber(value)
                return false
            end
        end
        return true
    end
    

    def isEmpty(string)
        if string != nil && @tsUtil.compareTo(string, @stringUtil.NULL_STRING) != 0 && @tsUtil.compareTo(string, @stringUtil.EMPTY_STRING) != 0
            return false
        else
            return true
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/logic/string/StringUtil"

class StringValidationUtil
    @@instance = StringValidationUtil.new()
end

