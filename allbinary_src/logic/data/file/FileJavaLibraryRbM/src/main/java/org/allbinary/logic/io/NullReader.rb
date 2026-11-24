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
require "java/io/Reader"

module ::Org; module Allbinary; module Logic; module Io

class NullReader < ::Java::Io::Reader
    

    # throws IOException
    def read_j0()
        return -1
    end
    

    # throws IOException
    def read_j3(cbuf, off, len)
        return -1
    end

    def read(*java_overload_args)
        return read_j0(*java_overload_args) if java_overload_args.length == 0
        return read_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method read takes #{java_overload_args.length} arguments"
    end
    

    # throws IOException
    def ready()
        return false
    end
    java_overload :ready, 0
    

    # throws IOException
    def skip(n)
        return 0
    end
    java_overload :skip, 1
    

    def close()
    end
    java_overload :close, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_READER, NullReader.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullReader"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_READER].include?(name)
        end
        super
    end
end

begin
    NullReader.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

