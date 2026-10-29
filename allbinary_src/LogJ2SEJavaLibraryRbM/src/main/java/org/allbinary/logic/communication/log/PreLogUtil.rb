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
class PreLogUtil
    

    def initialize()
    end
    

    def self.put(specialMessage, anyType, functionName)
        PreLogUtil.putOE(specialMessage, anyType, functionName, NullUtil.getInstance().NULL_OBJECT)
    end
    

    def self.putOE(specialMessage, anyType, functionName, exception)
        className = CommonStrings.getInstance().EMPTY
        if anyType.class.name != nil
            className = String.new(anyType.class.name)
        end
        message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        print(PreLogUtil::LOG_SUCCESS)
        puts(message)
    end
    

    def self.putS(specialMessage, className, functionName)
        PreLogUtil.putSE(specialMessage, className, functionName, NullUtil.getInstance().NULL_OBJECT)
    end
    

    def self.putSE(specialMessage, className, functionName, exception)
        message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        print(PreLogUtil::LOG_SUCCESS)
        puts(message)
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/LogFormatUtil"
require "java/lang/System"

class PreLogUtil
    LOG_SUCCESS = "org.allbinary: "
end

