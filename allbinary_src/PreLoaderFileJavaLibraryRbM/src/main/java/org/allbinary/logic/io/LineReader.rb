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

# require "java/io/DataInputStream"

class LineReader
    attr_accessor :logUtil, :commonStrings, :fileName, :string, :index, :idFile, :idData

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @fileName = nil
        @string = nil
        @index = 0
        @idFile = nil
        @idData = nil
    end
    

    def initialize(fileName)
        initialize_fields
        begin
            bytes = Array.new(100000, 0)
            @fileName = fileName
            @idFile = AbFileInputStream.new(fileName)
            @idFile.read(bytes)
            @string = bytes.pack("c*").force_encoding("UTF-8")
        rescue StandardError => e
            @logUtil.put("File: " + fileName, self, "LineReader", e)
            begin
            end
        end
    end
    

    def hasNext()
        begin
            nextIndex = (@string.index(CommonSeps.getInstance().NEW_LINE, @index) || -1)
            if nextIndex == -1
                return false
            end
            return true
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "hasNext", e)
            begin
            end
            return false
        end
    end
    

    # throws Exception
    def next_()
        begin
            nextIndex = (@string.index(CommonSeps.getInstance().NEW_LINE, @index) || -1)
            if nextIndex == -1
                raise StandardError.new("next() should have been called first")
            end
            temp = @string[@index...nextIndex]
            @index = nextIndex + 1
            return temp
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "next", e)
            begin
            end
            raise e
        end
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/io/AbFileInputStream"

