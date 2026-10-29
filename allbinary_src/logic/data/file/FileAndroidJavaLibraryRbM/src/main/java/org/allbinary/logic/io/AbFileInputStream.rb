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
# require "java/io/FileInputStream"
# require "java/io/FileNotFoundException"
# require "java/io/IOException"
# require "java/io/InputStream"
# require "java/nio/channels/FileChannel"

class AbFileInputStream < InputStream
    attr_accessor :fileInputStream

    def initialize_fields
        @fileInputStream = nil
    end
    

    def initialize(fileInputStream)
        super()
        initialize_fields
        @fileInputStream = fileInputStream
    end
    

    def mark(readlimit)
        @fileInputStream.mark(readlimit)
    end
    

    def markSupported()
        return @fileInputStream.markSupported()
    end
    

    # throws IOException
    def reset()
        java_monitor.synchronize do
        @fileInputStream.reset()
        end
    end
    

    # throws IOException
    def available()
        return @fileInputStream.available()
    end
    

    # throws IOException
    def close()
        @fileInputStream.close()
    end
    

    def getChannel()
        return @fileInputStream.getChannel()
    end
    

    # throws IOException
    def read()
        return @fileInputStream.read()
    end
    

    # throws IOException
    # Java overloaded method: Ruby keeps the last definition
    def read(b)
        return @fileInputStream.read(b)
    end
    

    # throws IOException
    # Java overloaded method: Ruby keeps the last definition
    def read(buffer, offset, count)
        return @fileInputStream.read(buffer, offset, count)
    end
    

    # throws IOException
    def skip(n)
        return @fileInputStream.skip(n)
    end
end

