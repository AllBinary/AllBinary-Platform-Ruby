# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary

require "java/lang/Object"

#TempBase
class TsUtil
    

    def self.getInstance()
        return TsUtil.instance
    end
    

    def longBitsToDouble(bits)
        return java.lang.Double.longBitsToDouble(bits)
    end
    

    def intBitsToFloat(bits)
        return java.lang.Float.intBitsToFloat(bits)
    end
    

    def hashCode(anyType)
        return anyType.hash
    end
    

    # throws InterruptedException
    def waitFor(any, timeoutMillis)
        anyType = any
        anyType.wait(timeoutMillis)
    end
    

    def compareTo(a, b)
        return (a <=> b)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/lang/InterruptedException"

class TsUtil
    @@instance = TsUtil.new()
end

