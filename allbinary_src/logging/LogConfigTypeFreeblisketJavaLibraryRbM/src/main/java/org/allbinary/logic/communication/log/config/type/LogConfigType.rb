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


class LogConfigType
    attr_accessor :logUtil, :name, :description

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @name = nil
        @description = nil
    end
    

    def initialize(name, description)
        initialize_fields
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
            @@availableLogConfigTypes = BasicArrayListD.new()
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

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"

begin
    LogConfigType.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

