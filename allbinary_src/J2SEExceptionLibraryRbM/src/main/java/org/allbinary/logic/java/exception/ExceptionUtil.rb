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
# package org.allbinary.logic.java.exception

# require "java/io/ByteArrayOutputStream"
# require "java/io/PrintStream"

#ActualPlatform
class ExceptionUtil
    attr_accessor :NONE

    def initialize_fields
        @NONE = "No Stack Trace"
    end
    

    def self.getInstance()
        return ExceptionUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def getStackTrace(e)
        if e != nil
            byteArrayOutputStream = ByteArrayOutputStream.new()
            printStream = PrintStream.new(byteArrayOutputStream)
            e.printStackTrace(printStream)
            output = byteArrayOutputStream.to_s
            if output != nil
                return String.new(output)
            end
        end
        return @NONE
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class ExceptionUtil
    @@instance = ExceptionUtil.new()
    PRETEND_EXCEPTION = StandardError.new("Not Really An Exception")
end

