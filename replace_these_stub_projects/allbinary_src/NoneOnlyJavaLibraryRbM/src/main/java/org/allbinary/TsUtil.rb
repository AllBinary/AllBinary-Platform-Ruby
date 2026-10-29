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

#None - Do not use
class TsUtil
    

    def self.getInstance()
        return TsUtil.instance
    end
    

    def hashCode(anyType)
        return anyType.hash
    end
    

    # throws InterruptedException
    def waitFor(any, timeoutMillis)
        anyType = any
        anyType.wait(timeoutMillis)
    end
    

    def getRecord(anyType, recordId)
        return Array.new(0, 0)
    end
    

    def compareTo(a, b)
        return (a <=> b)
    end
    

    def equalIgnoreCase(a, b)
        return a.casecmp?(b)
    end
    

    def equalsNotstring(anyType, object2)
        return anyType.equals(object2)
    end
    

    def toNumberFromChar(value)
        return (value).ord
    end
    

    def toNumber(value)
        return value
    end
    

    def getByteArray(string)
        return string.bytes
    end
    

    def isItemListener(owner)
        return false
    end
    

    def printAvailableMethods(anyType)
    end
    

    def gc()
        GC.start
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/lang/InterruptedException"
require "java/lang/System"

class TsUtil
    @@instance = TsUtil.new()
end

