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
# package org.allbinary.logic.io

require "java/lang/Object"
require "java/lang/JavaOverload"
# require "java/io/FileNotFoundException"
# require "java/io/IOException"
require "java/io/InputStream"
# require "java/nio/channels/FileChannel"

module ::Org; module Allbinary; module Logic; module Io

class AbFileInputStream < ::Java::Io::InputStream
    attr_accessor :fileInputStream

    def jfields_org_allbinary_logic_io_AbFileInputStream
        @fileInputStream = nil unless instance_variable_defined?(:@fileInputStream)
    end
    

    def initialize(fileInputStream)
        super()
        jfields_org_allbinary_logic_io_AbFileInputStream
        @fileInputStream = fileInputStream
    end
    

    def mark(readlimit)
        @fileInputStream.mark(readlimit)
    end
    java_overload :mark, 1
    

    def markSupported()
        return @fileInputStream.markSupported()
    end
    java_overload :markSupported, 0
    

    # throws IOException
    def reset()
        java_monitor.synchronize do
        @fileInputStream.reset()
        end
    end
    java_overload :reset, 0
    

    # throws IOException
    def available()
        return @fileInputStream.available()
    end
    java_overload :available, 0
    

    # throws IOException
    def close()
        @fileInputStream.close()
    end
    java_overload :close, 0
    

    def getChannel()
        return @fileInputStream.getChannel()
    end
    java_overload :getChannel, 0
    

    # throws IOException
    def read_j0()
        return @fileInputStream.read()
    end
    

    # throws IOException
    def read_j1(b)
        return @fileInputStream.read(b)
    end
    

    # throws IOException
    def read_j3(buffer, offset, count)
        return @fileInputStream.read(buffer, offset, count)
    end

    def read(*java_overload_args)
        return read_j0(*java_overload_args) if java_overload_args.length == 0
        return read_j1(*java_overload_args) if java_overload_args.length == 1
        return read_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method read takes #{java_overload_args.length} arguments"
    end
    

    # throws IOException
    def skip(n)
        return @fileInputStream.skip(n)
    end
    java_overload :skip, 1
end

module ::Java; module Io; autoload :FileInputStream, "java/io/FileInputStream" unless const_defined?(:FileInputStream, false); end; end

end; end; end; end

