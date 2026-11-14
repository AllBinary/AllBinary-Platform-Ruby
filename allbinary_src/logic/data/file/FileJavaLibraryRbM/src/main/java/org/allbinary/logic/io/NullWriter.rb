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
require "java/io/Writer"

class NullWriter < Writer
    

    # throws IOException
    def write(c)
    end
    

    # throws IOException
    # Java overloaded method: Ruby keeps the last definition
    def write(cbuf, off, len)
    end
    

    # throws IOException
    # Java overloaded method: Ruby keeps the last definition
    def write(str)
    end
    

    # throws IOException
    # Java overloaded method: Ruby keeps the last definition
    def write(str, off, len)
    end
    

    # throws IOException
    def flush()
    end
    

    # throws IOException
    def close()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_WRITER, NullWriter.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullWriter"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_WRITER].include?(name)
        end
        super
    end
end

begin
    NullWriter.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

