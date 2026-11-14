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

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :GenericProfile, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile"
autoload :GenericProfileDataWorkerType, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerType"
autoload :SavedCaptureGenericProfileDataWorkerType, "org/allbinary/input/automation/module/generic/configuration/profile/SavedCaptureGenericProfileDataWorkerType"
autoload :CaptureWorkerInterface, "org/allbinary/input/media/image/capture/CaptureWorkerInterface"
autoload :ScreenCaptureImagesWorker, "org/allbinary/input/media/image/capture/ScreenCaptureImagesWorker"
autoload :SavedCaptureImagesWorker, "org/allbinary/input/automation/module/generic/SavedCaptureImagesWorker"

