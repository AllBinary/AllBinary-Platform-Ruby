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
        BooleanUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BooleanUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BooleanUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BooleanUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :TsUtil, "org/allbinary/TsUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory"

begin
    BooleanUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

