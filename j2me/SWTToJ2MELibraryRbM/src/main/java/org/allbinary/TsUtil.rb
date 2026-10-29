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
# require "javax/microedition/lcdui/Displayable"
# require "javax/microedition/lcdui/Form"
# require "javax/microedition/rms/InvalidRecordIDException"
# require "javax/microedition/rms/RecordStore"
# require "javax/microedition/rms/RecordStoreException"
# require "javax/microedition/rms/RecordStoreNotOpenException"

#SWT
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
    

    # throws RecordStoreNotOpenException, InvalidRecordIDException, RecordStoreException
    def getRecord(anyType, recordId)
        recordStore = anyType
        data = nil
        (self).java_monitor.synchronize do
            data = Array.new(recordStore.getRecordSize(recordId), 0)
            recordStore.getRecord(recordId, data, 0)
        end
        return (data.length < 1 ? NullUtil.getInstance().NULL_BYTE_ARRAY : data)
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
    

    def getClassClassLoader(anyType)
        return anyType.class.getClassLoader()
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
        if owner.is_a?(Form)
            return true
        else
            return false
        end
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

require "org/allbinary/logic/NullUtil"
require "java/lang/InterruptedException"
require "java/lang/System"

class TsUtil
    @@instance = TsUtil.new()
end

