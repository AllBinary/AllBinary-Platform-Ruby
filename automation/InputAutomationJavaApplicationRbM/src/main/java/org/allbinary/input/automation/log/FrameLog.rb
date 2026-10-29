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
# package org.allbinary.input.automation.log

# require "java/io/File"
# require "java/io/FileOutputStream"

class FrameLog
    attr_accessor :frame, :infoStringBuffer, :actionsStringBuffer

    def initialize_fields
        @frame = nil
        @infoStringBuffer = StringMaker.new()
        @actionsStringBuffer = StringMaker.new()
    end
    

    def initialize(frame)
        initialize_fields
        @frame = frame
    end
    

    def addInfo(infoString)
        @infoStringBuffer.append(infoString)
    end
    

    def addActions(vectorOfStrings)
        size = vectorOfStrings.size()
        (0...size).each do |index|
            self.addAction(vectorOfStrings.get(index))
        end
    end
    

    def addAction(action)
        @actionsStringBuffer.append(action)
        @actionsStringBuffer.append(CommonSeps.getInstance().NEW_LINE)
    end
    

    # throws Exception
    def write()
        filePathStringBuffer = StringMaker.new()
        filePathStringBuffer.append(ImageOutputData::SAVE_PATH)
        filePathStringBuffer.append(LongUtil.fillIn(@frame.to_s))
        filePathStringBuffer.append(".txt")
        filePath = filePathStringBuffer.to_s
        fileOutputStream = FileOutputStream.new(File.new(filePath))
        fileOutputStream.write(FrameLog.frameBytes)
        fileOutputStream.write(getFrame().to_s.bytes)
        fileOutputStream.write("\n")
        fileOutputStream.write(FrameLog.info)
        fileOutputStream.write(@infoStringBuffer.to_s.bytes)
        fileOutputStream.write("\n")
        fileOutputStream.write(FrameLog.actions)
        fileOutputStream.write(@actionsStringBuffer.to_s.bytes)
        fileOutputStream.close()
    end
    

    def getFrame()
        return @frame
    end

    def self.frameBytes()
        return defined?(@@frameBytes) ? @@frameBytes : nil
    end

    def self.frameBytes=(value)
        @@frameBytes = value
    end

    def self.info()
        return defined?(@@info) ? @@info : nil
    end

    def self.info=(value)
        @@info = value
    end

    def self.actions()
        return defined?(@@actions) ? @@actions : nil
    end

    def self.actions=(value)
        @@actions = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/input/automation/ImageOutputData"
require "org/allbinary/logic/java/number/LongUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"

class FrameLog
    @@frameBytes = String.new("Frame: ").getBytes()
    @@info = String.new("Info: \n").getBytes()
    @@actions = String.new("Actions: \n").getBytes()
end

