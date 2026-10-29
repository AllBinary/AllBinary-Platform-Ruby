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
end

require "org/allbinary/input/media/image/InputImageType"

class SavedCaptureGenericProfileDataWorkerType
    SAVED_CAPTURE = SavedCaptureGenericProfileDataWorkerType.new("Saved " + InputImageType::CAPTURE.getName(), "c:\\share\\captures\\2\\", 100)
end

