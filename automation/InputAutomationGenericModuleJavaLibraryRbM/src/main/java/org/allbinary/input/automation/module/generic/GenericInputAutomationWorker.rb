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

require "java/lang/JavaOverload"
# require "java/util/Set"
require "org/allbinary/input/automation/module/AbstractInputAutomationWorker"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic

class GenericInputAutomationWorker < ::Org::Allbinary::Input::Automation::ModulePackage::AbstractInputAutomationWorker
    attr_accessor :logUtil, :PROCESS_DATA_WORKER_RESULTS, :lastFrame, :frame, :genericProfile

    def jfields_org_allbinary_input_automation_module_generic_GenericInputAutomationWorker
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @PROCESS_DATA_WORKER_RESULTS = "processDataWorkerResults"
        @lastFrame = -1
        @frame = nil unless instance_variable_defined?(:@frame)
        @genericProfile = nil unless instance_variable_defined?(:@genericProfile)
    end
    

    def initialize(inputAutomationActionInterface, genericProfile, motionRectangleConstraintsInterface, imageComparatorConstraintsInterface)
        super(inputAutomationActionInterface)
        jfields_org_allbinary_input_automation_module_generic_GenericInputAutomationWorker
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.setCaptureWorker(GenericProfileCaptureWorkerFactory.getInstance(genericProfile))
        self.setInputAutomationActionInterface(inputAutomationActionInterface)
        self.setImageComparisonWorker(::Org::Allbinary::Media::Image::Comparison::ImageComparisonWorker.new(imageComparatorConstraintsInterface))
        self.setMotionRectanglesWorker(::Org::Allbinary::Media::Image::Comparison::Motion::MotionRectanglesWorker.new(motionRectangleConstraintsInterface))
        self.setGenericProfile(genericProfile)
        vector = self.getGenericProfile().getGenericProfileDataWorkerTypeVector()
        size = vector.size()
        (0...size).each do |index|
            genericProfileDataWorkerType = vector.get(index)
            @logUtil.putF("Adding Listener: " + (genericProfileDataWorkerType).to_s, self, @commonStrings.CONSTRUCTOR)
            if genericProfileDataWorkerType == ::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfileDataWorkerType::COMPARISON
                self.getCaptureWorker().addListenerInterface(self.getImageComparisonWorker())
            elsif genericProfileDataWorkerType == ::Org::Allbinary::Input::Automation::ModulePackage::Generic::Configuration::Profile::GenericProfileDataWorkerType::MOTION
                self.getImageComparisonWorker().addListenerInterface(self.getMotionRectanglesWorker())
            end
        end
    end
    

    # throws Exception
    def processDataWorkerResults()
        @logUtil.putF(@commonStrings.START, self, @PROCESS_DATA_WORKER_RESULTS)
        self.waitForDataWorkers()
        cacheInterface = ::Org::Allbinary::Input::Media::Image::Capture::CapturedBufferedImagesCacheSingleton.getInstance()
        keyArray = cacheInterface.keySet().toArray()
        if keyArray.length > 0
            @logUtil.putF("Image Available", self, @PROCESS_DATA_WORKER_RESULTS)
            self.setFrame(keyArray[keyArray.length - 1])
            if getFrame() > @lastFrame
                @logUtil.putF("Processing new frame: " + (getFrame()).to_s, self, @PROCESS_DATA_WORKER_RESULTS)
                hashMap = self.getGenericProfile().getGenericProfileActions().getHashMap()
                set = hashMap.keySet()
                @logUtil.putF("Processing " + (set.size()).to_s + "Actions", self, @PROCESS_DATA_WORKER_RESULTS)
                actionNameArray = set.toArray()
                size = actionNameArray.length
                (0...size).each do |index|
                    actionNameString = actionNameArray[index]
                    @logUtil.putF("Processing Action: " + actionNameString, self, @PROCESS_DATA_WORKER_RESULTS)
                    genericProfileAction = hashMap.get(actionNameString)
                    genericProfileActionScript = genericProfileAction.getGenericProfileActionScript()
                    vector = genericProfileActionScript.getProfileActionConditionInterfaceVector()
                    CaptureWorkerUtil.processProfileActionConditions(vector, getFrame())
                end
                @lastFrame = self.getFrame()
            end
        else
            @logUtil.putF("Image Not Available", self, @PROCESS_DATA_WORKER_RESULTS)
        end
    end
    java_overload :processDataWorkerResults, 0
    

    # throws Exception
    def process()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.PROCESS)
        self.startDataWorkers()
        self.processDataWorkerResults()
    end
    java_overload :process, 0
    

    def getGenericProfile()
        return @genericProfile
    end
    java_overload :getGenericProfile, 0
    

    def setGenericProfile(genericProfile)
        @genericProfile = genericProfile
    end
    java_overload :setGenericProfile, 1
    

    def getFrame()
        return @frame
    end
    java_overload :getFrame, 0
    

    def setFrame(frame)
        @frame = frame
    end
    java_overload :setFrame, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :InputAutomationActionInterface, "org/allbinary/input/automation/module/InputAutomationActionInterface" unless const_defined?(:InputAutomationActionInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; autoload :GenericProfile, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile" unless const_defined?(:GenericProfile, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; autoload :GenericProfileDataWorkerType, "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerType" unless const_defined?(:GenericProfileDataWorkerType, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; autoload :GenericProfileAction, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction" unless const_defined?(:GenericProfileAction, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; module Script; autoload :GenericProfileActionScript, "org/allbinary/input/automation/module/generic/configuration/profile/actions/script/GenericProfileActionScript" unless const_defined?(:GenericProfileActionScript, false); end; end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Media; module Image; module Capture; autoload :CapturedBufferedImagesCacheSingleton, "org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton" unless const_defined?(:CapturedBufferedImagesCacheSingleton, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :J2SECacheInterface, "org/allbinary/logic/util/cache/J2SECacheInterface" unless const_defined?(:J2SECacheInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; autoload :ImageComparatorConstraintsInterface, "org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface" unless const_defined?(:ImageComparatorConstraintsInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; autoload :ImageComparisonWorker, "org/allbinary/media/image/comparison/ImageComparisonWorker" unless const_defined?(:ImageComparisonWorker, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion; autoload :MotionRectangleConstraintsInterface, "org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface" unless const_defined?(:MotionRectangleConstraintsInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion; autoload :MotionRectanglesWorker, "org/allbinary/media/image/comparison/motion/MotionRectanglesWorker" unless const_defined?(:MotionRectanglesWorker, false); end; end; end; end; end; end
autoload :CaptureWorkerUtil, "org/allbinary/input/automation/module/generic/CaptureWorkerUtil" unless const_defined?(:CaptureWorkerUtil, false)
autoload :GenericProfileCaptureWorkerFactory, "org/allbinary/input/automation/module/generic/GenericProfileCaptureWorkerFactory" unless const_defined?(:GenericProfileCaptureWorkerFactory, false)

end; end; end; end; end; end

