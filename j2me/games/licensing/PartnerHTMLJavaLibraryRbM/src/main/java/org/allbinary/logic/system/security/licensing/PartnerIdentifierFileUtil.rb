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


class PartnerIdentifierFileUtil
    attr_accessor :logUtil, :FILE_NAME

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @FILE_NAME = "partner.txt"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return PartnerIdentifierFileUtil.instance
    end
    

    def get()
        begin
            resourceUtil = ResourceUtil.getInstance()
            partnerString = StringUtil.getInstance().EMPTY_STRING
            return partnerString
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET, e)
            return StringUtil.getInstance().NULL_STRING
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

autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    PartnerIdentifierFileUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

