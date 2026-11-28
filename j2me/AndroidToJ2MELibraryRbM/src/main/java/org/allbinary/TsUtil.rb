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

module ::Org; module Allbinary

#Android
class TsUtil
    

    def self.getInstance()
        return @@instance
    end
    

    def longBitsToDouble(bits)
        return Double.longBitsToDouble(bits)
    end
    

    def intBitsToFloat(bits)
        return Float.intBitsToFloat(bits)
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
            data = (Array.new(recordStore.getRecordSize(recordId), 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) }
            recordStore.getRecord(recordId, data, 0)
        end
        return (data.length < 1 ? ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_BYTE_ARRAY : data)
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
        if owner.is_a?(::Javax::Microedition::Lcdui::Form)
            return true
        else
            return false
        end
    end
    

    def gc()
        GC.start
    end

    def self.instance()
        TsUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TsUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TsUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TsUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Displayable, "javax/microedition/lcdui/Displayable" unless const_defined?(:Displayable, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Form, "javax/microedition/lcdui/Form" unless const_defined?(:Form, false); end; end; end
module ::Javax; module Microedition; module Rms; autoload :InvalidRecordIDException, "javax/microedition/rms/InvalidRecordIDException" unless const_defined?(:InvalidRecordIDException, false); end; end; end
module ::Javax; module Microedition; module Rms; autoload :RecordStore, "javax/microedition/rms/RecordStore" unless const_defined?(:RecordStore, false); end; end; end
module ::Javax; module Microedition; module Rms; autoload :RecordStoreException, "javax/microedition/rms/RecordStoreException" unless const_defined?(:RecordStoreException, false); end; end; end
module ::Javax; module Microedition; module Rms; autoload :RecordStoreNotOpenException, "javax/microedition/rms/RecordStoreNotOpenException" unless const_defined?(:RecordStoreNotOpenException, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
require "java/lang/InterruptedException"
require "java/lang/System"
require "java/lang/ClassLoader"

begin
    TsUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end

