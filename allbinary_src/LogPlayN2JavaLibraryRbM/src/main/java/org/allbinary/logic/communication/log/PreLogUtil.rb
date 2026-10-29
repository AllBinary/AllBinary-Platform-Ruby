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

# require "jsinterop/annotations/JsType"

#ActualPlatform
class PreLogUtil
    

    def initialize()
    end
    

    def self.put(specialMessage, anyType, functionName)
        className = PreLogUtil.getClassName(anyType)
        if className == nil
            className = CommonStrings.getInstance().EMPTY
        end
        className = StringMaker.new().append(className).append(CommonSeps.getInstance().FORWARD_SLASH).append(StringUtil.getInstance().toString(anyType)).to_s
        message = LogFormatUtil.getInstance().getS(className, functionName, specialMessage)
        PlayN.getInstance().log().debug((PreLogUtil::LOG_SUCCESS).to_s + message)
    end
    

    def self.putOE(specialMessage, anyType, functionName, exception)
        className = PreLogUtil.getClassName(anyType)
        if className == nil
            className = CommonStrings.getInstance().EMPTY
        end
        className = StringMaker.new().append(className).append(CommonSeps.getInstance().FORWARD_SLASH).append(StringUtil.getInstance().toString(anyType)).to_s
        message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        PlayN.getInstance().log().error((PreLogUtil::LOG_SUCCESS).to_s + message, exception)
    end
    

    def self.putS(specialMessage, className, functionName)
        message = LogFormatUtil.getInstance().getS(className, functionName, specialMessage)
        PlayN.getInstance().log().debug((PreLogUtil::LOG_SUCCESS).to_s + message)
    end
    

    def self.putSE(specialMessage, className, functionName, exception)
        message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        PlayN.getInstance().log().error((PreLogUtil::LOG_SUCCESS).to_s + message, exception)
    end
    

    def self.getClassName(anyType)
        raise NotImplementedError
    end
end

require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "playn/core/PlayN"
require "org/allbinary/logic/communication/log/LogFormatUtil"

class PreLogUtil
    LOG_SUCCESS = "org.allbinary: "
end

