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
    attr_accessor :logUtil, :idGeneratorEntity, :name

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @idGeneratorEntity = nil
        @name = nil
    end
    

    def initialize()
        initialize_fields
        @idGeneratorEntity = IdGeneratorEntityFactory.getInstance()
    end
    

    def initialize(value)
        begin
            vector = BasicArrayListD.new()
            vector.add(@name)
            vector.add((value).to_s.to_s)
            @idGeneratorEntity.insert(vector)
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
        @name = name
        end
    end
    

    # throws IOException
    def getNext()
        java_monitor.synchronize do
        begin
            idLong = @idGeneratorEntity.get(@name)
            newValue = (idLong.to_i + 1).to_s
            @idGeneratorEntity.update(@name, newValue)
            return idLong.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().IDLOGGING)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "getNext", e)
            end
            return "Error"
        end
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/data/tables/generator/IdGeneratorEntity"
require "org/allbinary/data/tables/generator/IdGeneratorEntityFactory"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/LogUtil"

class UniqueIdGenerator
    EXT = ".unq"
end

