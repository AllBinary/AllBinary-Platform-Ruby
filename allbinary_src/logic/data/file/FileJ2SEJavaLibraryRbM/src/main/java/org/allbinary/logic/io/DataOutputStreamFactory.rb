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
        DataOutputStreamFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DataOutputStreamFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DataOutputStreamFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DataOutputStreamFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :AbFile, "org/allbinary/logic/io/file/AbFile"
autoload :AbDataOutputStream, "org/allbinary/logic/io/AbDataOutputStream"
autoload :AbFileOutputStream, "org/allbinary/logic/io/AbFileOutputStream"
autoload :FileStreamFactory, "org/allbinary/logic/io/FileStreamFactory"

begin
    DataOutputStreamFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

