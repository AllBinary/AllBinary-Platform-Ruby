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
        return defined?(@@availableLogConfigTypes) ? @@availableLogConfigTypes : nil
    end

    def self.availableLogConfigTypes=(value)
        @@availableLogConfigTypes = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class LogConfigType
    @@availableLogConfigTypes = BasicArrayListD.new()
end

