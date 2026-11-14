# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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


class LogConfigTypeFactory
    attr_accessor :NO_DESCRIPTION, :OS, :FACTORYERROR

    def initialize_fields
        @NO_DESCRIPTION = "No Description"
        @OS = LogConfigType.new("Operating System", @NO_DESCRIPTION)
        @FACTORYERROR = LogConfigType.new("Factory Error", @NO_DESCRIPTION)
    end
    

    def self.getInstance()
        return LogConfigTypeFactory.instance
    end
    

    def initialize()
        initialize_fields
        LogConfigTypes::LOGGING.add(@OS)
        LogConfigTypes::LOGGING.add(@FACTORYERROR)
    end

    def self.instance()
        LogConfigTypeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LogConfigTypeFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LogConfigTypeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LogConfigTypeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogConfigType, "org/allbinary/logic/communication/log/config/type/LogConfigType"
autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes"

begin
    LogConfigTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

