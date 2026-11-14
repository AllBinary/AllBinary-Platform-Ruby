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
# package org.allbinary.data.generator

require "java/lang/Object"
# require "java/io/IOException"
require "org/allbinary/data/generator/IdGeneratorInterface"

class UniqueIdGenerator
    include IdGeneratorInterface
    attr_accessor :logUtil, :newFile, :id

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @newFile = nil
        @id = 0
    end
    

    def initialize()
        initialize_fields
    end
    

    def initialize(value)
        begin
            @newFile.createNewFile()
            idData = DataOutputStreamFactory.getInstance().getInstanceForAbFile(@newFile)
            idData.writeLong(value)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().IDLOGGING)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "initialize", e)
            end
        end
    end
    

    # throws Exception
    def setFile(filePathName, name)
        java_monitor.synchronize do
        @newFile = AbFile.createAbFile(filePathName)
        end
    end
    

    # throws IOException
    def getNext()
        java_monitor.synchronize do
        idData = nil
        idOutData = nil
        begin
            idFile = AbFileInputStream.new(@newFile)
            idData = AbDataInputStream.new(idFile)
            @id = idData.readLong()
            idOutFile = AbFileOutputStream.createFromAbFile(@newFile)
            idOutData = AbDataOutputStream.new(idOutFile)
            idOutData.writeLong(@id + 1)
            idLong = @id
            return idLong.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().IDLOGGING)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "getNext", e)
            end
            return "Error"
        ensure
            StreamUtil.getInstance().close(idData)
            StreamUtil.getInstance().close(idOutData)
        end
        end
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:EXT, ".unq")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UniqueIdGenerator"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:EXT].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AbDataInputStream, "org/allbinary/logic/io/AbDataInputStream"
autoload :AbDataOutputStream, "org/allbinary/logic/io/AbDataOutputStream"
autoload :AbFileInputStream, "org/allbinary/logic/io/AbFileInputStream"
autoload :AbFileOutputStream, "org/allbinary/logic/io/AbFileOutputStream"
autoload :DataOutputStreamFactory, "org/allbinary/logic/io/DataOutputStreamFactory"
autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil"
autoload :AbFile, "org/allbinary/logic/io/file/AbFile"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    UniqueIdGenerator.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

