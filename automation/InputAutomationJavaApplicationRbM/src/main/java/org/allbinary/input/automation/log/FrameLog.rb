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
        FrameLog.java_static_fields unless @java_static_fields_started
        return defined?(@@frameBytes) ? @@frameBytes : nil
    end

    def self.frameBytes=(value)
        FrameLog.java_static_fields unless @java_static_fields_started
        @@frameBytes = value
    end

    def self.info()
        FrameLog.java_static_fields unless @java_static_fields_started
        return defined?(@@info) ? @@info : nil
    end

    def self.info=(value)
        FrameLog.java_static_fields unless @java_static_fields_started
        @@info = value
    end

    def self.actions()
        FrameLog.java_static_fields unless @java_static_fields_started
        return defined?(@@actions) ? @@actions : nil
    end

    def self.actions=(value)
        FrameLog.java_static_fields unless @java_static_fields_started
        @@actions = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@frameBytes = String.new("Frame: ").getBytes()
            @@info = String.new("Info: \n").getBytes()
            @@actions = String.new("Actions: \n").getBytes()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FrameLog"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :ImageOutputData, "org/allbinary/input/automation/ImageOutputData"
autoload :LongUtil, "org/allbinary/logic/java/number/LongUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"

begin
    FrameLog.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

