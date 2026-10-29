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
        if string == nil
            return StringUtil.getInstance().EMPTY_STRING
        end
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/string/tokens/Tokenizer"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class CamelCaseUtil
    @@instance = CamelCaseUtil.new()
end

