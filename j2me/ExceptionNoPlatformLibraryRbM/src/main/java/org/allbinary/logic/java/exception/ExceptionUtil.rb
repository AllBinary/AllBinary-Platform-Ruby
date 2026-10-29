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


#NoPlatform
class ExceptionUtil
    attr_accessor :PRETEND_EXCEPTION

    def initialize_fields
        @PRETEND_EXCEPTION = StandardError.new("Not Really An Exception")
    end
    

    def self.getInstance()
        return ExceptionUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def getStackTrace(e)
        raise RuntimeError.new()
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
end

