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

# require "java/io/BufferedWriter"
# require "java/io/FileWriter"

class BufferedWriterUtil
    attr_accessor :logUtil, :commonStrings, :commonLabels, :REMOVING_OLD

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @commonLabels = CommonLabels.getInstance()
        @REMOVING_OLD = "Remove old for overwriting: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return BufferedWriterUtil.instance
    end
    

    # throws Exception
    def overwrite(path, data)
        abFile = AbFile.createAbFile(path)
        if abFile.exists()
            @logUtil.putF(@REMOVING_OLD + path, self, @commonStrings.CREATE)
            abFile.delete()
        else
            name = AbPathData.getInstance().removeNameFromPath(path)
            abFileDirectory = AbFile.createAbFile(name)
            if abFileDirectory.exists()
            else
                stringBuilder = StringMaker.new()
                @logUtil.putF(stringBuilder.append(@commonStrings.CREATE).append(@commonLabels.COLON_SEP).append(name).to_s, self, @commonStrings.CREATE)
                result = abFileDirectory.mkdirs()
                stringBuilder.delete(0, stringBuilder.length())
                @logUtil.putF(stringBuilder.append(@commonLabels.RESULT_).appendboolean(result).to_s, self, @commonStrings.CREATE)
            end
        end
        self.write(abFile, data)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def overwrite(abFile, data)
        if abFile.exists()
            @logUtil.putF(@REMOVING_OLD + (abFile.getPath()).to_s, self, @commonStrings.CREATE)
            abFile.delete()
        else
            name = AbPathData.getInstance().removeNameFromPath(abFile.getAbsolutePath())
            abFileDirectory = AbFile.createAbFile(name)
            if abFileDirectory.exists()
            else
                stringBuilder = StringMaker.new()
                @logUtil.putF(stringBuilder.append(@commonStrings.CREATE).append(@commonLabels.COLON_SEP).append(name).to_s, self, @commonStrings.CREATE)
                result = abFileDirectory.mkdirs()
                stringBuilder.delete(0, stringBuilder.length())
                @logUtil.putF(stringBuilder.append(@commonLabels.RESULT_).appendboolean(result).to_s, self, @commonStrings.CREATE)
            end
        end
        self.write(abFile, data)
    end
    

    # throws Exception
    def write(abFile, data)
        fileOut = BufferedWriter.new(FileWriter.new(AbFileNativeUtil.get(abFile)))
        fileOut.write(data, 0, data.length)
        fileOut.newLine()
        fileOut.flush()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/AbFileNativeUtil"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"

class BufferedWriterUtil
    @@instance = BufferedWriterUtil.new()
end

