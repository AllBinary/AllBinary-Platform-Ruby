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
    attr_accessor :commonSeps, :logFormatUtil, :LABEL

    def initialize_fields
        @commonSeps = CommonSeps.getInstance()
        @logFormatUtil = LogFormatUtil.getInstance()
        @LABEL = "org.allbinary"
    end
    

    def self.getInstance()
        return LogUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def putL(log)
        specialMessage = log.getSpecialMessage()
        anyType = log.getObject()
        functionName = log.getFunctionName()
        exception = log.getThrowable()
        self.put(specialMessage, anyType, functionName, exception)
    end
    

    def putF(specialMessage, anyType, functionName)
        self.put(specialMessage, anyType, functionName, NullUtil.getInstance().NULL_OBJECT)
    end
    

    def putFS(specialMessage, string, functionName)
        self.putS(specialMessage, string, functionName, NullUtil.getInstance().NULL_OBJECT)
    end
    

    def put(specialMessage, anyType, functionName, exception)
        className = @LABEL
        className = String.new(StringMaker.new().append(anyType.class.name).append(@commonSeps.COLON).append((TsUtil.getInstance().hashCode(anyType)).to_s(16)).to_s)
        message = @logFormatUtil.get(className, functionName, specialMessage, exception)
        android.util.Log.i(@LABEL, message)
    end
    

    def putS(specialMessage, string, functionName, exception)
        className = @LABEL
        className = String.new(StringMaker.new().append(string).append(@commonSeps.COLON).append((TsUtil.getInstance().hashCode(string)).to_s(16)).to_s)
        message = @logFormatUtil.get(className, functionName, specialMessage, exception)
        android.util.Log.i(@LABEL, message)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/TsUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/communication/log/Log"
require "org/allbinary/logic/communication/log/LogFormatUtil"

class LogUtil
    @@instance = LogUtil.new()
end

