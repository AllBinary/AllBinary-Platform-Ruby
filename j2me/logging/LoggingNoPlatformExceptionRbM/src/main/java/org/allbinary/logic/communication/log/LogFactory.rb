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


#NoPlatform
class LogFactory
    

    def self.getInstance(specialMessage, anyType, functionName, exception)
        raise RuntimeError.new()
    end
    

    def self.getInstanceF(specialMessage, anyType, functionName)
        raise RuntimeError.new()
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/communication/log/Log"

class LogFactory
    LOG = Log.new(StringUtil.getInstance().EMPTY_STRING, NullUtil.getInstance().NULL_OBJECT, StringUtil.getInstance().EMPTY_STRING, NullUtil.getInstance().NULL_OBJECT)
end

