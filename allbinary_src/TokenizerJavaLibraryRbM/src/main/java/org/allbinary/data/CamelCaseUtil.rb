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


module ::Org; module Allbinary; module DataPackage

class CamelCaseUtil
    attr_accessor :commonSeps

    def jfields_org_allbinary_data_CamelCaseUtil
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
    end

    def initialize
        jfields_org_allbinary_data_CamelCaseUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    # throws Exception
    def getAsCamelCase(string, stringBuilder)
        stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
        stringBuilder.delete(0, stringBuilder.length())
        list = ::Org::Allbinary::Util::BasicArrayListD.new()
        tokenizer = ::Org::Allbinary::Logic::StringPackage::Tokens::Tokenizer.new(@commonSeps.UNDERSCORE)
        tokenizer.getTokensFromString(string, list)
        size = list.size()
        word = nil
        (0...size).each do |i|
            word = list.get(i)
            word = (stringValidationUtil.isEmpty(word) ? word : ::Org::Allbinary::Logic::StringPackage::StringMaker.new().appendchar((word[0]).upcase).append(word[1..].downcase).to_s)
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

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Tokens; autoload :Tokenizer, "org/allbinary/logic/string/tokens/Tokenizer" unless const_defined?(:Tokenizer, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

begin
    CamelCaseUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

