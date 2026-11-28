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
# package org.allbinary.logic.system.security.licensing

# require "java/io/InputStreamReader"

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing

class PartnerIdentifierFileUtil
    attr_accessor :logUtil, :FILE_NAME

    def jfields_org_allbinary_logic_system_security_licensing_PartnerIdentifierFileUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @FILE_NAME = "partner.txt"
    end

    def initialize
        jfields_org_allbinary_logic_system_security_licensing_PartnerIdentifierFileUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def get()
        begin
            resourceUtil = ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance()
            inputStream = resourceUtil.getResourceAsStream(@FILE_NAME)
            inputStreamReader = InputStreamReader.new(inputStream)
            chars = (Array.new(30, "\0")).tap { |java_array| java_array.instance_variable_set(:@java_component, :C) }
            size = inputStreamReader.read(chars)
            partnerString = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
            if size > 0
                partnerString = chars[0, size].join
            end
            inputStreamReader.close()
            return partnerString
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET, e)
            return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().NULL_STRING
        end
    end

    def self.instance()
        PartnerIdentifierFileUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PartnerIdentifierFileUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PartnerIdentifierFileUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PartnerIdentifierFileUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Org; module Allbinary; module DataPackage; module Resource; autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil" unless const_defined?(:ResourceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    PartnerIdentifierFileUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

