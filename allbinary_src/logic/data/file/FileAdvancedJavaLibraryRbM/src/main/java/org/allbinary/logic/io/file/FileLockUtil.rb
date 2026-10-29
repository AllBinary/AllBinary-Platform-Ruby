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
# package org.allbinary.logic.io.file

# require "java/nio/channels/FileChannel"
# require "java/nio/channels/FileLock"

class FileLockUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return FileLockUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def getAll(vector, isReturnOnFailure)
        fileLockVector = BasicArrayListD.new()
        size = vector.size()
        (0...size).each do |index|
            file = vector.get(index)
            fileLock = self.getLock(file)
            if fileLock != nil
                @logUtil.putF("File Lock Obtained: " + (file.getAbsolutePath()).to_s, self, "getAll")
                fileLockVector.add(fileLock)
            elsif isReturnOnFailure
                @logUtil.putF("Total Locks Obtained: " + (fileLockVector.size()).to_s, self, "getAll")
                return fileLockVector
            end
        end
        @logUtil.putF("Total Locks Obtained: " + (fileLockVector.size()).to_s, self, "getAll")
        return fileLockVector
    end
    

    # throws Exception
    def getAllPossible(vector)
        return self.getAll(vector, false)
    end
    

    # throws Exception
    def getAllOrNone(vector)
        fileLockVector = self.getAll(vector, true)
        if vector.size() != fileLockVector.size()
            return BasicArrayListD.new()
        else
            return fileLockVector
        end
    end
    

    # throws Exception
    def getLock(file)
        begin
            return self.getLock(AbFileOutputStream.createFromAbFileAppend(file, true))
        rescue StandardError => e
            @logUtil.put("Exception returns null", self, "getLock", e)
            return nil
        ensure
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getLock(fileOutputStream)
        begin
            fileLock = self.getLock(fileOutputStream.getChannel())
            return fileLock
        rescue StandardError => e
            @logUtil.put("Exception returns null", self, "getLock", e)
            return nil
        ensure
            @logUtil.putF("Finally - Closing FileOutputStream", self, "getLock")
            StreamUtil.getInstance().close(fileOutputStream)
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getLock(fileChannel)
        begin
            fileLock = fileChannel.tryLock()
            return fileLock
        rescue StandardError => e
            @logUtil.put("Exception returns null", self, "getLock", e)
            return nil
        ensure
            @logUtil.putF("Finally - Closing FileChannel", self, "getLock")
            fileChannel.close()
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/AbFileOutputStream"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/file/AbFile"

class FileLockUtil
    @@instance = FileLockUtil.new()
end

