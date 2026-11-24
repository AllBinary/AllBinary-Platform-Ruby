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

module ::Org; module Allbinary; module Input; module Media; module Image; module Capture

class ScreenScavangerRobot
    attr_accessor :logUtil, :commonStrings

    def jfields_org_allbinary_input_media_image_capture_ScreenScavangerRobot
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_input_media_image_capture_ScreenScavangerRobot
    end
    

    # throws Exception
    def getScreenAsBufferedImages()
        @logUtil.putF(@commonStrings.START, self, "getScreenAsBufferedImages")
        dimScreenSize = Toolkit.getDefaultToolkit().getScreenSize()
        rectScreenSize = Rectangle.new(dimScreenSize)
        robotHashtable = ::Org::Allbinary::Input::Automation::Robot::InputRobotFactory.getInstance().get()
        bufferedImageArray = Array.new(1, nil)
        index = 0
        inputRobotInterface = robotHashtable.get("Java Robot")
        bufferedImageArray[index] = inputRobotInterface.createScreenCapture(rectScreenSize)
        @logUtil.putF("Finish", self, "getScreenAsBufferedImages")
        return bufferedImageArray
    end
end

module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotFactory, "org/allbinary/input/automation/robot/InputRobotFactory" unless const_defined?(:InputRobotFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotInterface, "org/allbinary/input/automation/robot/InputRobotInterface" unless const_defined?(:InputRobotInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

end; end; end; end; end; end

