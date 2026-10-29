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


#ActualPlatform
class LogUtil
    

    def self.getInstance()
        return LogUtil.instance
    end
    

    def initialize()
    end
    

    def putP(log)
    end
    

    def putF(specialMessage, anyType, functionName)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def putF(specialMessage, className, functionName)
    end
    

    def put(specialMessage, anyType, functionName, exception)
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

