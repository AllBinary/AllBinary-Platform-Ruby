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
class PreLogUtil
    

    def initialize()
    end
    

    def self.put(specialMessage, anyType, functionName)
        PreLogUtil.putOE(specialMessage, anyType, functionName, NullUtil.getInstance().NULL_OBJECT)
    end
    

    def self.putOE(specialMessage, anyType, functionName, exception)
        raise RuntimeError.new()
    end
    

    def self.putSE(specialMessage, className, functionName, exception)
        raise RuntimeError.new()
    end
end

require "org/allbinary/logic/NullUtil"

