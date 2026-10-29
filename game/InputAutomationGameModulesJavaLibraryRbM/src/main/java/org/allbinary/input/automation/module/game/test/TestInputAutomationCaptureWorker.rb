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

# require "java/util/Set"
require "org/allbinary/input/automation/module/AbstractInputAutomationWorker"

class TestInputAutomationCaptureWorker < AbstractInputAutomationWorker
    attr_accessor :logUtil, :genericProfileActions, :MESSAGE, :PROCESS_DATA_WORKER_RESULTS, :IMAGE_AVAILABLE_SO_PROCESSING, :IMAGE_NOT_AVAILABLE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @genericProfileActions = nil
        @MESSAGE = "GenericInputAutomationCaptureWorker"
        @PROCESS_DATA_WORKER_RESULTS = "processDataWorkerResults"
        @IMAGE_AVAILABLE_SO_PROCESSING = "Image Available so processing"
        @IMAGE_NOT_AVAILABLE = "Image Not Available"
    end
    

    def initialize(inputAutomationActionInterface, genericProfileActions, imageComparatorConstraintsInterface, motionRectangleConstraintsInterface)
        super(inputAutomationActionInterface)
        initialize_fields
        @logUtil.putF(@MESSAGE, self, @commonStrings.CONSTRUCTOR)
        self.setGenericProfileActions(genericProfileActions)
    end
    

    # throws Exception
    def processDataWorkerResults()
        cacheInterface = CapturedBufferedImagesCacheSingleton.getInstance()
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
    

    # throws Exception
    def process()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.PROCESS)
        self.startDataWorkers()
        self.processDataWorkerResults()
    end
    

    def getGenericProfileActions()
        return @genericProfileActions
    end
    

    def setGenericProfileActions(genericProfileActions)
        @genericProfileActions = genericProfileActions
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/input/automation/module/InputAutomationActionInterface"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActions"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/script/GenericProfileActionScript"
require "org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/util/cache/J2SECacheInterface"
require "org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface"
require "org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface"

