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

module ::Org; module Allbinary; module Input; module Automation; module Log

class FrameLog
    attr_accessor :frame, :infoStringBuffer, :actionsStringBuffer

    def jfields_org_allbinary_input_automation_log_FrameLog
        @frame = nil unless instance_variable_defined?(:@frame)
        @infoStringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        @actionsStringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
    end
    

    def initialize(frame)
        jfields_org_allbinary_input_automation_log_FrameLog
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
        @actionsStringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
    end
    

    # throws Exception
    def write()
        filePathStringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        filePathStringBuffer.append(::Org::Allbinary::Input::Automation::ImageOutputData::SAVE_PATH)
        filePathStringBuffer.append(::Org::Allbinary::Logic::Java::Number::LongUtil.fillIn(@frame.to_s))
        filePathStringBuffer.append(".txt")
        filePath = filePathStringBuffer.to_s
        fileOutputStream = ::Java::Io::FileOutputStream.new(File.new(filePath))
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

module ::Java; module Io; autoload :FileOutputStream, "java/io/FileOutputStream" unless const_defined?(:FileOutputStream, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Input; module Automation; autoload :ImageOutputData, "org/allbinary/input/automation/ImageOutputData" unless const_defined?(:ImageOutputData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Number; autoload :LongUtil, "org/allbinary/logic/java/number/LongUtil" unless const_defined?(:LongUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

begin
    FrameLog.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

