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
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/AbDataInputStream"
require "org/allbinary/logic/io/AbDataOutputStream"
require "org/allbinary/logic/io/AbFileInputStream"
require "org/allbinary/logic/io/AbFileOutputStream"
require "org/allbinary/logic/io/DataOutputStreamFactory"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/string/CommonStrings"

class UniqueIdGenerator
    EXT = ".unq"
end

