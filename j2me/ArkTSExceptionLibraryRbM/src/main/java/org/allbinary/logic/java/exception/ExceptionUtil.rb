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
    attr_accessor :PRETEND_EXCEPTION, :NONE

    def jfields_org_allbinary_logic_java_exception_ExceptionUtil
        @PRETEND_EXCEPTION = StandardError.new("Not Really An Exception")
        @NONE = "No Stack Trace"
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_java_exception_ExceptionUtil
    end
    

    def getStackTrace(e)
        if true
        end
        if true
        end
        if true
        end
        if true
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
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ExceptionUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    ExceptionUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

