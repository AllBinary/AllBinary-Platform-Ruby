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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/config/type/LogConfigType"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypes"

class LogConfigTypeFactory
    @@instance = LogConfigTypeFactory.new()
end

