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
# package org.allbinary.data


class CamelCaseUtil
    attr_accessor :commonSeps

    def initialize_fields
        @commonSeps = CommonSeps.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CamelCaseUtil.instance
    end
    

    # throws Exception
    def getAsCamelCase(string, stringBuilder)
        stringValidationUtil = StringValidationUtil.getInstance()
        stringBuilder.delete(0, stringBuilder.length())
        list = BasicArrayListD.new()
        tokenizer = Tokenizer.new(@commonSeps.UNDERSCORE)
        tokenizer.getTokensFromString(string, list)
        size = list.size()
        word = nil
        (0...size).each do |i|
            word = list.get(i)
            word = (stringValidationUtil.isEmpty(word) ? word : StringMaker.new().appendchar((word[0]).upcase).append(word[1..].downcase).to_s)
            stringBuilder.append(word)
        end
        return stringBuilder.to_s
    end

    def self.instance()
        CamelCaseUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CamelCaseUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CamelCaseUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CamelCaseUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil"
autoload :Tokenizer, "org/allbinary/logic/string/tokens/Tokenizer"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"

begin
    CamelCaseUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

