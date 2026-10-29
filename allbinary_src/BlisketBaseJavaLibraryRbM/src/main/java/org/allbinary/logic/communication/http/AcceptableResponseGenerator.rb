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
# package org.allbinary.logic.communication.http

# require "javax/servlet/http/HttpServletRequest"

class AcceptableResponseGenerator
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return AcceptableResponseGenerator.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def get(httpServletRequest)
        commonStrings = CommonStrings.getInstance()
        begin
            acceptableResponseUtil = AcceptableResponseUtil.getInstance()
            acceptable = httpServletRequest.getHeader("accept")
            result = acceptableResponseUtil.getTagName(0)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTP)
                @logUtil.putF("Request Type: " + acceptable, self, commonStrings.GET)
            end
            if acceptable != nil
                size = acceptableResponseUtil.size()
                (0...size).each do |index|
                    if (acceptable <=> acceptableResponseUtil.get(index)) == 0
                        result = acceptableResponseUtil.getTagName(index)
                    end
                end
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTP)
                @logUtil.putF("Response Type: " + result, self, commonStrings.GET)
            end
            return result
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPERROR)
                @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET, e)
            end
            raise e
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/http/AcceptableResponseUtil"

class AcceptableResponseGenerator
    @@instance = AcceptableResponseGenerator.new()
end

