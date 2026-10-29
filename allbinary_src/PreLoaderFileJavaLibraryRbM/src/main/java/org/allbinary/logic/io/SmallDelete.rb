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

class SmallDelete
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
    

    def deleteAtStart(start, end_)
        begin
            beginIndex = 0
            endIndex = 0
            beginIndex = (@string.index(start) || -1)
            endIndex = (@string.index(end_) || -1)
            if endIndex > beginIndex && beginIndex >= 0 && endIndex >= 0 && beginIndex < 10 && endIndex < 525
                text = @string[endIndex...@string.length]
                idFile = FileOutputStream.new(@fileName)
                idOutData = DataOutputStream.new(idFile)
                idOutData.writeBytes(text)
                return true
            end
            return false
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().IDLOGGING)
                @logUtil.put(@commonStrings.EXCEPTION, self, "deleteAtStart", e)
            end
            return false
        end
    end
    

    def deleteBetween(start, end_, newText)
        begin
            beginIndex = 0
            endIndex = 0
            beginIndex = (@string.index(start) || -1)
            endIndex = (@string.index(end_) || -1)
            if endIndex > beginIndex && beginIndex >= 0 && endIndex >= 0 && beginIndex < 50 && endIndex < 425
                newStart = @string[0...beginIndex]
                text = @string[endIndex + end_.length...@string.length]
                idFile = FileOutputStream.new(@fileName)
                idOutData = DataOutputStream.new(idFile)
                idOutData.writeBytes(newStart + newText + text)
                return true
            end
            return false
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().IDLOGGING)
                @logUtil.put(@commonStrings.EXCEPTION, self, "deleteAtStart", e)
            end
            return false
        end
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/AbFileSystem"
require "org/allbinary/string/CommonStrings"

