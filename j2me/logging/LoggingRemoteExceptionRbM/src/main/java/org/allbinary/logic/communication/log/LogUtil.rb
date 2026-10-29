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

# require "java/io/IOException"

#ActualPlatform
class LogUtil
    attr_accessor :MESSAGE, :isFirstException, :timeDelayHelper, :abeClientInformation, :stringBuffer

    def initialize_fields
        @MESSAGE = "message"
        @isFirstException = true
        @timeDelayHelper = TimeDelayHelper.new(200000)
        @abeClientInformation = nil
        @stringBuffer = StringMaker.new()
    end
    

    def self.getInstance()
        return LogUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def putL(log)
        if log == nil
            return
        end
        specialMessage = log.getSpecialMessage()
        anyType = log.getObject()
        functionName = log.getFunctionName()
        exception = log.getThrowable()
        self.put(specialMessage, anyType, functionName, exception)
    end
    

    def putF(specialMessage, anyType, functionName)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def putF(specialMessage, className, functionName)
    end
    

    def put(specialMessage, anyType, functionName, exception)
        if exception != nil
            if exception.class.name.compareTo(XmlRpcException.getName()) == 0
                return
            end
            if exception.class.name.compareTo(IOException.getName()) == 0
                return
            end
            if @isFirstException || @timeDelayHelper.isTimeTNT()
                className = CommonStrings.getInstance().EMPTY
                @isFirstException = false
                if anyType != nil && anyType.class.name != nil
                    className = String.new(anyType.class.name)
                end
                message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
                begin
                    puts("Eeeek")
                    if @abeClientInformation == nil
                        raise RuntimeError.new()
                    end
                    hashtable = @abeClientInformation.toHashtable()
                    @stringBuffer.delete(0, @stringBuffer.length())
                    @stringBuffer.append(message)
                    @stringBuffer.append(CommonSeps.getInstance().SPACE)
                    @stringBuffer.append(SpecialMessageUtil.getInstance().get())
                    hashtable.put(@MESSAGE, @stringBuffer.to_s)
                    XmlRpcRemoteLogClient.new(@abeClientInformation).get(hashtable)
                rescue StandardError => e
                    puts("Exception")
                    puts(e.full_message)
                end
            end
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/apache/xmlrpc/XmlRpcException"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/canvas/SpecialMessageUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/logic/communication/log/Log"
require "org/allbinary/logic/communication/log/LogFormatUtil"
require "org/allbinary/logic/communication/log/XmlRpcRemoteLogClient"
require "java/lang/System"

class LogUtil
    @@instance = LogUtil.new()
end

