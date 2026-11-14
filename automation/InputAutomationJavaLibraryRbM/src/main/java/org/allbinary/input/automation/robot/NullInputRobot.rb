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
# package org.allbinary.input.automation.robot

# require "java/awt"
# require "java/awt/image/BufferedImage"
# require "javax/help/HelpSet"
require "org/allbinary/input/automation/AbstractInputRobot"
require "org/allbinary/input/automation/robot/InputRobotInterface"

class NullInputRobot < AbstractInputRobot
    include InputRobotInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        super(nil)
        initialize_fields
    end
    

    def getName()
        return NullInputRobot::NAME
    end
    

    def getHelpSet()
        return nil
    end
    

    def getMousePoint()
        return PointFactory.getInstance(0, 0)
    end
    

    def keyPress(keycode)
        @logUtil.putF("KeyCode: " + (keycode).to_s, self, "keyPress")
    end
    

    def keyRelease(keycode)
        @logUtil.putF("KeyCode: " + (keycode).to_s, self, "keyRelease")
    end
    

    def mouseMove(x, y)
        @logUtil.putF("X: " + (x).to_s + " Y: " + (y).to_s, self, "mouseMove")
    end
    

    def mousePress(buttons)
        @logUtil.putF("Buttons: " + (buttons).to_s, self, "mousePress")
    end
    

    def mouseRelease(buttons)
        @logUtil.putF("Buttons: " + (buttons).to_s, self, "mouseRelease")
    end
    

    def createScreenCapture(screenRect)
        return nil
    end
    

    def delay(ms)
    end
    

    def getAutoDelay()
        return -1
    end
    

    def getPixelColor(x, y)
        return nil
    end
    

    def isAutoWaitForIdle()
        return false
    end
    

    def mouseWheel(wheelAmt)
    end
    

    def setAutoDelay(ms)
    end
    

    def setAutoWaitForIdle(isOn)
    end
    

    def toString()
        return "DirectXWindowsInputRobot"
    end
    alias_method :to_s, :toString
    

    def waitForIdle()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:LIBRARY_NAME, "null")
        const_set(:NAME, "NULL")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullInputRobot"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:LIBRARY_NAME, :NAME].include?(name)
        end
        super
    end
end

autoload :PointFactory, "org/allbinary/input/automation/PointFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"

begin
    NullInputRobot.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

