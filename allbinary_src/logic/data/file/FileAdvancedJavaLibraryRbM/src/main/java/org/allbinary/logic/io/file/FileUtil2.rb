# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.logic.io.file


class FileUtil2
    attr_accessor :logUtil, :commonStrings, :streamUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @streamUtil = StreamUtil.getInstance()
    end
    

    def self.getInstance()
        return FileUtil2.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def loadFileAsList(file, max, byteArray1)
        inputStream = nil
        begin
            inputStream = AbFileInputStream.new(file)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.ADD, e)
        end
        return SimpleFileUtil.getInstance().loadFileAsList(inputStream, max, byteArray1)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/AbFileInputStream"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/SimpleFileUtil"

class FileUtil2
    @@instance = FileUtil2.new()
end

