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
# package org.allbinary.input.automation.module.generic.configuration.profile

require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerType"

class SavedCaptureGenericProfileDataWorkerType < GenericProfileDataWorkerType
    attr_accessor :path, :lastFrame

    def initialize_fields
        @path = nil
        @lastFrame = 0
    end
    

    def initialize(name, path, lastFrame)
        super(name)
        initialize_fields
        self.setPath(path)
        self.setLastFrame(lastFrame)
    end
    

    def getPath()
        return @path
    end
    

    def setPath(path)
        @path = path
    end
    

    def getLastFrame()
        return @lastFrame
    end
    

    def setLastFrame(lastFrame)
        @lastFrame = lastFrame
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SAVED_CAPTURE, SavedCaptureGenericProfileDataWorkerType.new("Saved " + InputImageType::CAPTURE.getName(), "c:\\share\\captures\\2\\", 100))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SavedCaptureGenericProfileDataWorkerType"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SAVED_CAPTURE].include?(name)
        end
        super
    end
end

autoload :InputImageType, "org/allbinary/input/media/image/InputImageType"

begin
    SavedCaptureGenericProfileDataWorkerType.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

