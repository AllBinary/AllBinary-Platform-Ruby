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

# require "java/io/FileNotFoundException"
# require "java/io/FileOutputStream"
# require "java/io/IOException"
# require "java/io/OutputStream"
# require "java/nio/channels/FileChannel"

class AbFileOutputStream < OutputStream
    attr_accessor :fileOutputStream

    def initialize_fields
        @fileOutputStream = nil
    end
    

    # throws FileNotFoundException
    def self.createFromAbFile(file)
        return AbFileOutputStream.new(FileOutputStream.new(AbFileNativeUtil.get(file)))
    end
    

    # throws FileNotFoundException
    def self.createFromAbFileAppend(file, append)
        return AbFileOutputStream.new(FileOutputStream.new(file.getPath()))
    end
    

    # throws FileNotFoundException
    def self.createFromFilePath(name)
        return AbFileOutputStream.new(FileOutputStream.new(name))
    end
    

    # throws FileNotFoundException
    def self.createFromFilePathAppend(name, append)
        return AbFileOutputStream.new(FileOutputStream.new(name))
    end
    

    def initialize(fileOutputStream)
        super()
        initialize_fields
        @fileOutputStream = fileOutputStream
    end
    

    # throws IOException
    def close()
        @fileOutputStream.close()
    end
    

    def getChannel()
        return @fileOutputStream.getChannel()
    end
    

    # throws IOException
    def write(buffer)
        @fileOutputStream.write(buffer)
    end
    

    # throws IOException
    # Java overloaded method: Ruby keeps the last definition
    def write(buffer, offset, count)
        @fileOutputStream.write(buffer, offset, count)
    end
    

    # throws IOException
    # Java overloaded method: Ruby keeps the last definition
    def write(b)
        @fileOutputStream.write(b)
    end
end

require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/AbFileNativeUtil"

