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


module ::Org; module Allbinary; module Logic; module Java; module ExceptionPackage

#ActualPlatform
class ExceptionUtil
    attr_accessor :NONE

    def jfields_org_allbinary_logic_java_exception_ExceptionUtil
        @NONE = "No Stack Trace"
    end
    

    def self.getInstance()
        return ExceptionUtil.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_java_exception_ExceptionUtil
    end
    

    def getStackTrace(e)
        if e != nil
            byteArrayOutputStream = ::Java::Io::ByteArrayOutputStream.new()
            printStream = ::Java::Io::PrintStream.new(byteArrayOutputStream)
            e.printStackTrace(printStream)
            output = byteArrayOutputStream.to_s
            return String.new(output)
        end
        return @NONE
    end

    def self.instance()
        ExceptionUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ExceptionUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ExceptionUtil.new()
            const_set(:PRETEND_EXCEPTION, StandardError.new("Not Really An Exception"))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ExceptionUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:PRETEND_EXCEPTION].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream" unless const_defined?(:ByteArrayOutputStream, false); end; end
module ::Java; module Io; autoload :PrintStream, "java/io/PrintStream" unless const_defined?(:PrintStream, false); end; end

begin
    ExceptionUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

