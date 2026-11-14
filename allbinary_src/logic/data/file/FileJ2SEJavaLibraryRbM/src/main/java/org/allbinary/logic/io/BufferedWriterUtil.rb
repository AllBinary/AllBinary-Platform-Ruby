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
        BufferedWriterUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BufferedWriterUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BufferedWriterUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BufferedWriterUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AbFile, "org/allbinary/logic/io/file/AbFile"
autoload :AbFileNativeUtil, "org/allbinary/logic/io/file/AbFileNativeUtil"
autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    BufferedWriterUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

