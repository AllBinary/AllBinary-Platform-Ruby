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

# require "java/io/InputStream"
# require "java/io/InputStreamReader"

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
            inputStream = resourceUtil.getResourceAsStream(@FILE_NAME)
            inputStreamReader = InputStreamReader.new(inputStream)
            chars = Array.new(30, "\0")
            size = inputStreamReader.read(chars)
            partnerString = StringUtil.getInstance().EMPTY_STRING
            if size > 0
                partnerString = chars[0, size].join
            end
            inputStreamReader.close()
            return partnerString
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET, e)
            return StringUtil.getInstance().NULL_STRING
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"

class PartnerIdentifierFileUtil
    @@instance = PartnerIdentifierFileUtil.new()
end

