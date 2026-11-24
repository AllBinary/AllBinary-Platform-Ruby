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

module ::Org; module Allbinary; module Logic; module Communication; module Http

class AcceptableResponseGenerator
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_communication_http_AcceptableResponseGenerator
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return AcceptableResponseGenerator.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_http_AcceptableResponseGenerator
    end
    

    # throws Exception
    def get(httpServletRequest)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        begin
            acceptableResponseUtil = AcceptableResponseUtil.getInstance()
            acceptable = httpServletRequest.getHeader("accept")
            result = acceptableResponseUtil.getTagName(0)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTP)
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTP)
                @logUtil.putF("Response Type: " + result, self, commonStrings.GET)
            end
            return result
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPERROR)
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

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :AcceptableResponseUtil, "org/allbinary/logic/communication/http/AcceptableResponseUtil" unless const_defined?(:AcceptableResponseUtil, false)

begin
    AcceptableResponseGenerator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

