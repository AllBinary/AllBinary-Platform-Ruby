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

# require "java/util/Set"
require "org/allbinary/input/automation/module/AbstractInputAutomationWorker"

class GenericInputAutomationWorker < AbstractInputAutomationWorker
    attr_accessor :logUtil, :PROCESS_DATA_WORKER_RESULTS, :lastFrame, :frame, :genericProfile

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @PROCESS_DATA_WORKER_RESULTS = "processDataWorkerResults"
        @lastFrame = -1
        @frame = nil
        @genericProfile = nil
    end
    

    def initialize(inputAutomationActionInterface, genericProfile, motionRectangleConstraintsInterface, imageComparatorConstraintsInterface)
        super(inputAutomationActionInterface)
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.setCaptureWorker(GenericProfileCaptureWorkerFactory.getInstance(genericProfile))
        self.setInputAutomationActionInterface(inputAutomationActionInterface)
        self.setImageComparisonWorker(ImageComparisonWorker.new(imageComparatorConstraintsInterface))
        self.setMotionRectanglesWorker(MotionRectanglesWorker.new(motionRectangleConstraintsInterface))
        self.setGenericProfile(genericProfile)
        vector = self.getGenericProfile().getGenericProfileDataWorkerTypeVector()
        size = vector.size()
        (0...size).each do |index|
            genericProfileDataWorkerType = vector.get(index)
            @logUtil.putF("Adding Listener: " + (genericProfileDataWorkerType).to_s, self, @commonStrings.CONSTRUCTOR)
            if genericProfileDataWorkerType == GenericProfileDataWorkerType::COMPARISON
                self.getCaptureWorker().addListenerInterface(self.getImageComparisonWorker())
            elsif genericProfileDataWorkerType == GenericProfileDataWorkerType::MOTION
                self.getImageComparisonWorker().addListenerInterface(self.getMotionRectanglesWorker())
            end
        end
    end
    

    # throws Exception
    def processDataWorkerResults()
        @logUtil.putF(@commonStrings.START, self, @PROCESS_DATA_WORKER_RESULTS)
        self.waitForDataWorkers()
        cacheInterface = CapturedBufferedImagesCacheSingleton.getInstance()
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
    

    # throws Exception
    def process()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.PROCESS)
        self.startDataWorkers()
        self.processDataWorkerResults()
    end
    

    def getGenericProfile()
        return @genericProfile
    end
    

    def setGenericProfile(genericProfile)
        @genericProfile = genericProfile
    end
    

    def getFrame()
        return @frame
    end
    

    def setFrame(frame)
        @frame = frame
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/input/automation/module/InputAutomationActionInterface"
require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile"
require "org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerType"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction"
require "org/allbinary/input/automation/module/generic/configuration/profile/actions/script/GenericProfileActionScript"
require "org/allbinary/input/media/image/capture/CapturedBufferedImagesCacheSingleton"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/util/cache/J2SECacheInterface"
require "org/allbinary/media/image/comparison/ImageComparatorConstraintsInterface"
require "org/allbinary/media/image/comparison/ImageComparisonWorker"
require "org/allbinary/media/image/comparison/motion/MotionRectangleConstraintsInterface"
require "org/allbinary/media/image/comparison/motion/MotionRectanglesWorker"
require "org/allbinary/input/automation/module/generic/CaptureWorkerUtil"
require "org/allbinary/input/automation/module/generic/GenericProfileCaptureWorkerFactory"

