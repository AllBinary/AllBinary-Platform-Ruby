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
        AcceptableResponseGenerator.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AcceptableResponseGenerator.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AcceptableResponseGenerator.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AcceptableResponseGenerator"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :AcceptableResponseUtil, "org/allbinary/logic/communication/http/AcceptableResponseUtil"

begin
    AcceptableResponseGenerator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

