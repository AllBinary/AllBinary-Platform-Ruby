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


class DataOutputStreamFactory
    

    def self.getInstance()
        return DataOutputStreamFactory.instance
    end
    

    # throws Exception
    def getInstanceForAbFile(file)
        idFileOutputStream = AbFileOutputStream.createFromAbFile(file)
        idOutData = AbDataOutputStream.new(idFileOutputStream)
        return idOutData
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(filePath, fileName)
        fileStreamFactory = FileStreamFactory.getInstance()
        fileOutputStream = fileStreamFactory.getFileOutputStreamInstance(filePath, fileName)
        idOutData = AbDataOutputStream.new(fileOutputStream)
        return idOutData
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/AbDataOutputStream"
require "org/allbinary/logic/io/AbFileOutputStream"
require "org/allbinary/logic/io/FileStreamFactory"

class DataOutputStreamFactory
    @@instance = DataOutputStreamFactory.new()
end

