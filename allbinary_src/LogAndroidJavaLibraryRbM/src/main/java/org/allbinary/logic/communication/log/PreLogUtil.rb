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
        className = PreLogUtil::LABEL
        actualClassName = anyType.class.name
        if actualClassName != nil
            className = actualClassName
        end
        message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        android.util.Log.i(PreLogUtil::LABEL, message)
    end
    

    def self.putS(specialMessage, className, functionName)
        PreLogUtil.putSE(specialMessage, className, functionName, NullUtil.getInstance().NULL_OBJECT)
    end
    

    def self.putSE(specialMessage, className, functionName, exception)
        message = LogFormatUtil.getInstance().get(className, functionName, specialMessage, exception)
        android.util.Log.i(className, message)
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogFormatUtil"

class PreLogUtil
    LABEL = "org.allbinary"
end

