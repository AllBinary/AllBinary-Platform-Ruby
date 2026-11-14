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
# package org.allbinary.logic.io

# require "java/io/IOException"
require "java/io/OutputStream"

class NullOutputStream < OutputStream
    

    # throws IOException
    def write(b)
    end
    

    # throws IOException
    # Java overloaded method: Ruby keeps the last definition
    def write(b, off, len)
    end
    

    def close()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_OUTPUT_STREAM, NullOutputStream.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullOutputStream"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_OUTPUT_STREAM].include?(name)
        end
        super
    end
end

begin
    NullOutputStream.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

