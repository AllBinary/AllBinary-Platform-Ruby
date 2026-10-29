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
# package org.allbinary.input.media.image.capture

# require "java/awt/Dimension"
# require "java/awt/Rectangle"
# require "java/awt/Toolkit"
# require "java/awt/image/BufferedImage"

class ScreenScavangerRobot
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def getScreenAsBufferedImages()
        @logUtil.putF(@commonStrings.START, self, "getScreenAsBufferedImages")
        dimScreenSize = Toolkit.getDefaultToolkit().getScreenSize()
        rectScreenSize = Rectangle.new(dimScreenSize)
        robotHashtable = InputRobotFactory.getInstance().get()
        bufferedImageArray = Array.new(1, nil)
        index = 0
        inputRobotInterface = robotHashtable.get("Java Robot")
        bufferedImageArray[index] = inputRobotInterface.createScreenCapture(rectScreenSize)
        @logUtil.putF("Finish", self, "getScreenAsBufferedImages")
        return bufferedImageArray
    end
end

require "org/allbinary/input/automation/robot/InputRobotFactory"
require "org/allbinary/input/automation/robot/InputRobotInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"

