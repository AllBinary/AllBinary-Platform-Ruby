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

# require "java/io/DataOutputStream"
# require "java/io/FileOutputStream"

class SmallInsert
    attr_accessor :logUtil, :commonStrings, :fileName, :string

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @fileName = nil
        @string = nil
    end
    

    def initialize(fileName)
        initialize_fields
        @fileName = fileName
        @string = AbFileSystem.getInstance().readAsString(fileName)
    end
    

    def atBeginning(text)
        begin
            idFile = FileOutputStream.new(@fileName)
            idOutData = DataOutputStream.new(idFile)
            idOutData.writeBytes(text + @string)
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().IDLOGGING)
                @logUtil.put(@commonStrings.EXCEPTION, self, "insertAtBeginning", e)
            end
            return false
        end
    end
    

    def after(text, after)
        begin
            index = (@string.index(after) || -1)
            if index < 0
                puts("No such start: " + after + " in: " + @string)
                return false
            end
            index = index + after.length
            start = @string[0...index]
            end_ = @string[index + 1...@string.length]
            idFile = FileOutputStream.new(@fileName)
            idOutData = DataOutputStream.new(idFile)
            idOutData.writeBytes(start + text + end_)
            idOutData.close()
            idFile.close()
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().IDLOGGING)
                @logUtil.put(@commonStrings.EXCEPTION, self, "after", e)
            end
            return false
        end
    end
    

    def atEnd(text)
        begin
            idFile = FileOutputStream.new(@fileName)
            idOutData = DataOutputStream.new(idFile)
            idOutData.writeBytes(@string + text)
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().IDLOGGING)
                @logUtil.put(@commonStrings.EXCEPTION, self, "insertAtEnd", e)
            end
            return false
        end
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/AbFileSystem"
require "org/allbinary/string/CommonStrings"
require "java/lang/System"

