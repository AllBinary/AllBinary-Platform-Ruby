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
require "java/io/Writer"

module ::Org; module Allbinary; module Logic; module Io

class NullWriter < ::Java::Io::Writer
    

    # throws IOException
    def write_j1_1(c)
    end
    

    # throws IOException
    def write_j3_1(cbuf, off, len)
    end
    

    # throws IOException
    def write_j1_2(str)
    end
    

    # throws IOException
    def write_j3_2(str, off, len)
    end

    def write(*java_overload_args)
        return write_j1(*java_overload_args) if java_overload_args.length == 1
        return write_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method write takes #{java_overload_args.length} arguments"
    end

    def write_j1(*java_overload_args)
        return write_j1_1(*java_overload_args) if true && java_overload_args[0].is_a?(::Integer)
        return write_j1_2(*java_overload_args)
    end

    def write_j3(*java_overload_args)
        return write_j3_1(*java_overload_args) if true && (java_overload_args[0].nil? || (java_overload_args[0].is_a?(::Array) && (java_overload_args[0].instance_variable_get(:@java_component) || :C) == :C && (java_overload_args[0].empty? || java_overload_args[0][0].is_a?(::String)))) && java_overload_args[1].is_a?(::Integer) && java_overload_args[2].is_a?(::Integer)
        return write_j3_2(*java_overload_args)
    end
    

    # throws IOException
    def flush()
    end
    java_overload :flush, 0
    

    # throws IOException
    def close()
    end
    java_overload :close, 0

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

end; end; end; end

