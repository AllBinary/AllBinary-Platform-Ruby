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


module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic

class GenericProfileCaptureWorkerFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(genericProfile)
        vector = genericProfile.getGenericProfileDataWorkerTypeVector()
        size = vector.size()
        (0...size).each do |index|
            genericProfileDataWorkerType = vector.get(index)
            if genericProfileDataWorkerType == ::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfileDataWorkerType::SCREEN_CAPTURE
                return ::Org::Allbinary::Input::Media::Image::Capture::ScreenCaptureImagesWorker.new()
            elsif genericProfileDataWorkerType == ::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfileDataWorkerType::SAVED_CAPTURE
                return SavedCaptureImagesWorker.new(genericProfileDataWorkerType)
            end
        end
        raise StandardError.new("No CaptureWorkerInterface specified in GenericProfile")
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; autoload :GenericProfile, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile" unless const_defined?(:GenericProfile, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; autoload :GenericProfileDataWorkerType, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerType" unless const_defined?(:GenericProfileDataWorkerType, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; autoload :SavedCaptureGenericProfileDataWorkerType, "org/allbinary/input/automation/module/generic/configuration/profile/SavedCaptureGenericProfileDataWorkerType" unless const_defined?(:SavedCaptureGenericProfileDataWorkerType, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Media; module Image; module Capture; autoload :CaptureWorkerInterface, "org/allbinary/input/media/image/capture/CaptureWorkerInterface" unless const_defined?(:CaptureWorkerInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Media; module Image; module Capture; autoload :ScreenCaptureImagesWorker, "org/allbinary/input/media/image/capture/ScreenCaptureImagesWorker" unless const_defined?(:ScreenCaptureImagesWorker, false); end; end; end; end; end; end
autoload :SavedCaptureImagesWorker, "org/allbinary/input/automation/module/generic/SavedCaptureImagesWorker" unless const_defined?(:SavedCaptureImagesWorker, false)

end; end; end; end; end; end

