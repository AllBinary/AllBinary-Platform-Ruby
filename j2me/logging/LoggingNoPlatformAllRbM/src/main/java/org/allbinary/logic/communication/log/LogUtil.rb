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
# package org.allbinary.logic.communication.log


class LogUtil
    

    def self.getInstance()
        return LogUtil.instance
    end
    

    def initialize()
    end
    

    def putL(log)
        specialMessage = log.getSpecialMessage()
        anyType = log.getObject()
        functionName = log.getFunctionName()
        exception = log.getThrowable()
        raise RuntimeError.new()
    end
    

    def putF(specialMessage, anyType, functionName)
        raise RuntimeError.new()
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def putF(specialMessage, className, functionName)
        raise RuntimeError.new()
    end
    

    def put(specialMessage, anyType, functionName, exception)
        raise RuntimeError.new()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/Log"

class LogUtil
    @@instance = LogUtil.new()
end

