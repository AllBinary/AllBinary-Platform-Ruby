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
# package org.allbinary.input.automation.module.generic


class GenericProfileCaptureWorkerFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(genericProfile)
        vector = genericProfile.getGenericProfileDataWorkerTypeVector()
        size = vector.size()
        (0...size).each do |index|
            genericProfileDataWorkerType = vector.get(index)
            if genericProfileDataWorkerType == GenericProfileDataWorkerType::SCREEN_CAPTURE
                return ScreenCaptureImagesWorker.new()
            elsif genericProfileDataWorkerType == GenericProfileDataWorkerType::SAVED_CAPTURE
                return SavedCaptureImagesWorker.new(genericProfileDataWorkerType)
            end
        end
        raise StandardError.new("No CaptureWorkerInterface specified in GenericProfile")
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile"
require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerType"
require "org/allbinary/input/automation/module/generic/configuration/profile/SavedCaptureGenericProfileDataWorkerType"
require "org/allbinary/input/media/image/capture/CaptureWorkerInterface"
require "org/allbinary/input/media/image/capture/ScreenCaptureImagesWorker"
require "org/allbinary/input/automation/module/generic/SavedCaptureImagesWorker"

