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


class LogFactory
    

    def self.getInstance(specialMessage, anyType, functionName, exception)
        return Log.new(specialMessage, anyType, functionName, exception)
    end
    

    def self.getInstanceF(specialMessage, anyType, functionName)
        return Log.new(specialMessage, anyType, functionName, NullUtil.getInstance().NULL_OBJECT)
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/Log"

