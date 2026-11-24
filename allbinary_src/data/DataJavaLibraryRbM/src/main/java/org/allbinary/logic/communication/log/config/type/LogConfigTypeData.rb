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

class LogConfigTypeData
    attr_accessor :NAME, :DESCRIPTION

    def jfields_org_allbinary_logic_communication_log_config_type_LogConfigTypeData
        @NAME = "LOG_CONFIG_TYPE_NAME"
        @DESCRIPTION = "LOG_CONFIG_TYPE_DESCRIPTION"
    end
    

    def self.getInstance()
        return LogConfigTypeData.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_log_config_type_LogConfigTypeData
    end

    def self.instance()
        LogConfigTypeData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LogConfigTypeData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LogConfigTypeData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LogConfigTypeData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    LogConfigTypeData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

