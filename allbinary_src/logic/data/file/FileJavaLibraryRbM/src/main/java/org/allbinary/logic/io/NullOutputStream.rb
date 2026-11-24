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

require "java/lang/JavaOverload"
# require "java/io/IOException"
require "java/io/OutputStream"

module ::Org; module Allbinary; module Logic; module Io

class NullOutputStream < ::Java::Io::OutputStream
    

    # throws IOException
    def write_j1(b)
    end
    

    # throws IOException
    def write_j3(b, off, len)
    end

    def write(*java_overload_args)
        return write_j1(*java_overload_args) if java_overload_args.length == 1
        return write_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method write takes #{java_overload_args.length} arguments"
    end
    

    def close()
    end
    java_overload :close, 0

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

end; end; end; end

