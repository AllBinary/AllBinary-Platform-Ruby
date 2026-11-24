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
# package org.allbinary.input.automation.module.game.test

require "java/lang/JavaOverload"
# require "java/util/Set"
require "org/allbinary/input/automation/module/AbstractInputAutomationWorker"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Game; module Test

class TestInputAutomationCaptureWorker < ::Org::Allbinary::Input::Automation::ModulePackage::AbstractInputAutomationWorker
    attr_accessor :logUtil, :genericProfileActions, :MESSAGE, :PROCESS_DATA_WORKER_RESULTS, :IMAGE_AVAILABLE_SO_PROCESSING, :IMAGE_NOT_AVAILABLE

    def jfields_org_allbinary_input_automation_module_game_test_TestInputAutomationCaptureWorker
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @genericProfileActions = nil unless instance_variable_defined?(:@genericProfileActions)
        @MESSAGE = "GenericInputAutomationCaptureWorker"
        @PROCESS_DATA_WORKER_RESULTS = "processDataWorkerResults"
        @IMAGE_AVAILABLE_SO_PROCESSING = "Image Available so processing"
        @IMAGE_NOT_AVAILABLE = "Image Not Available"
    end
    

    def initialize(inputAutomationActionInterface, genericProfileActions, imageComparatorConstraintsInterface, motionRectangleConstraintsInterface)
        super(inputAutomationActionInterface)
        jfields_org_allbinary_input_automation_module_game_test_TestInputAutomationCaptureWorker
        @logUtil.putF(@MESSAGE, self, @commonStrings.CONSTRUCTOR)
        self.setGenericProfileActions(genericProfileActions)
    end
    

    # throws Exception
    def processDataWorkerResults()
        cacheInterface = ::Org::Allbinary::Input::Media::Image::Capture::CapturedBufferedImagesCacheSingleton.getInstance()
        if cacheInterface.keySet().size() > 0
            @logUtil.putF(@IMAGE_AVAILABLE_SO_PROCESSING, self, @PROCESS_DATA_WORKER_RESULTS)
            anyType = cacheInterface.keySet().toArray()[0]
            hashMap = self.getGenericProfileActions().getHashMap()
            set = hashMap.keySet()
            actionNameArray = set.toArray()
            size = actionNameArray.length
            (0...size).each do |index|
                actionNameString = actionNameArray[index]
                genericProfileAction = hashMap.get(actionNameString)
                genericProfileActionScript = genericProfileAction.getGenericProfileActionScript()
                vector = genericProfileActionScript.getProfileActionConditionInterfaceVector()
            end
            cacheInterface.get(anyType)
        else
            @logUtil.putF(@IMAGE_NOT_AVAILABLE, self, @PROCESS_DATA_WORKER_RESULTS)
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
    

    def getGenericProfileActions()
        return @genericProfileActions
    end
    java_overload :getGenericProfileActions, 0
    

    def setGenericProfileActions(genericProfileActions)
        @genericProfileActions = genericProfileActions
    end
    java_overload :setGenericProfileActions, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; autoload :InputAutomationActionInterface, "org/allbinary/input/automation/module/InputAutomationActionInterface" unless const_defined?(:InputAutomationActionInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; autoload :GenericProfileAction, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction" unless const_defined?(:GenericProfileAction, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; autoload :GenericProfileActions, "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActions" unless const_defined?(:GenericProfileActions, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic; module Configuration; module Profile; module Actions; module Script; autoload :GenericProfileActionScript, "org/allbinary/input/automation/module/generic/configuration/profile/actions/script/GenericProfileActionScript" unless const_defined?(:GenericProfileActionScript, false); end; end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Media; module Image; module Capture; autoload :CapturedBufferedImagesCacheSingleton, "org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton" unless const_defined?(:CapturedBufferedImagesCacheSingleton, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Cache; autoload :J2SECacheInterface, "org/allbinary/logic/util/cache/J2SECacheInterface" unless const_defined?(:J2SECacheInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; autoload :ImageComparatorConstraintsInterface, "org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface" unless const_defined?(:ImageComparatorConstraintsInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion; autoload :MotionRectangleConstraintsInterface, "org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface" unless const_defined?(:MotionRectangleConstraintsInterface, false); end; end; end; end; end; end

end; end; end; end; end; end; end

