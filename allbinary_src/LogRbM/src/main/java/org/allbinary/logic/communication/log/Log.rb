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


class Log
    attr_accessor :logFormatUtil, :specialMessage, :anyType, :functionName, :exception

    def initialize_fields
        @logFormatUtil = LogFormatUtil.getInstance()
        @specialMessage = nil
        @anyType = nil
        @functionName = nil
        @exception = nil
    end
    

    def initialize(specialMessage, anyType, functionName, exception)
        initialize_fields
        @specialMessage = specialMessage
        @anyType = anyType
        @functionName = functionName
        @exception = exception
    end
    

    def getSpecialMessage()
        return @specialMessage
    end
    

    def getObject()
        return @anyType
    end
    

    def getFunctionName()
        return @functionName
    end
    

    def getThrowable()
        return @exception
    end
    

    def toString()
        className = CommonStrings.getInstance().EMPTY
        clazz = @anyType.class
        if clazz.getName() != nil
            className = clazz.getName()
        end
        return @logFormatUtil.get(className, @functionName, @specialMessage, @exception)
    end
    alias_method :to_s, :toString
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/LogFormatUtil"

