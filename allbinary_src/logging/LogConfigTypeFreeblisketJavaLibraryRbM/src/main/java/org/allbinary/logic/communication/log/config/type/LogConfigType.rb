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
# package org.allbinary.logic.communication.log.config.type


module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type

class LogConfigType
    attr_accessor :logUtil, :name, :description

    def jfields_org_allbinary_logic_communication_log_config_type_LogConfigType
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @name = nil unless instance_variable_defined?(:@name)
        @description = nil unless instance_variable_defined?(:@description)
    end
    

    def initialize(name, description)
        jfields_org_allbinary_logic_communication_log_config_type_LogConfigType
        @name = name
        @description = description
        LogConfigType.availableLogConfigTypes.add(self)
    end
    

    def getName()
        return @name
    end
    

    def getDescription()
        return @description
    end
    

    def setName(value)
        @name = value
    end
    

    def setDescription(value)
        @description = value
    end

    def self.availableLogConfigTypes()
        LogConfigType.java_static_fields unless @java_static_fields_started
        return defined?(@@availableLogConfigTypes) ? @@availableLogConfigTypes : nil
    end

    def self.availableLogConfigTypes=(value)
        LogConfigType.java_static_fields unless @java_static_fields_started
        @@availableLogConfigTypes = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@availableLogConfigTypes = ::Org::Allbinary::Util::BasicArrayListD.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LogConfigType"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

begin
    LogConfigType.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

