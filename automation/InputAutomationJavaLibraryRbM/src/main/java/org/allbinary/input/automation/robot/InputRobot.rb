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
require "org/allbinary/input/automation/robot/InputRobotInterface"

class InputRobot
    include InputRobotInterface
    attr_accessor :logUtil, :robot

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @robot = nil
    end
    

    def initialize(graphicsDevice)
        initialize_fields
        @robot = Robot.new(graphicsDevice)
    end
    

    def getName()
        return InputRobot::NAME
    end
    

    def getHelpSet()
        return nil
    end
    

    def getMousePoint()
        point = MouseInfo.getPointerInfo().getLocation()
        return point
    end
    

    # throws Exception
    def mouseMoveToTarget(rectangle, x, y)
        point = PointHelper.getCenterPoint(rectangle)
        @robot.mouseMove(point.x + x, point.y + y)
        message = StringMaker.new().append("Moved Mouse To: x: ").appendint((point.x).to_i).append(" y: ").appendint((point.y).to_i).append(" in the middle of: ").append(StringUtil.getInstance().toString(rectangle)).to_s
        @logUtil.putF(message, self, "moveMouseToTarget")
    end
    

    def mouseMove(point)
        self.mouseMove(point.x, point.y)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def mouseMove(x, y)
        @robot.mouseMove(x, y)
        message = StringMaker.new().append("Moved Mouse To: x: ").appendint(x).append(" y: ").appendint(y).to_s
        @logUtil.putF(message, self, "moveMouse")
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def mouseMoveToTarget(rectangle)
        self.mouseMoveToTarget(rectangle, 0, 0)
    end
    

    def createScreenCapture(screenRect)
        return @robot.createScreenCapture(screenRect)
    end
    

    def delay(ms)
        @robot.delay(ms)
    end
    

    def getAutoDelay()
        return @robot.getAutoDelay()
    end
    

    def getPixelColor(x, y)
        return @robot.getPixelColor(x, y)
    end
    

    def isAutoWaitForIdle()
        return @robot.isAutoWaitForIdle()
    end
    

    def keyPress(keycode)
        @robot.keyPress(keycode)
    end
    

    def keyRelease(keycode)
        @robot.keyRelease(keycode)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def mouseMove(x, y)
        @robot.mouseMove(x, y)
    end
    

    def mousePress(buttons)
        @robot.mousePress(buttons)
    end
    

    def mouseRelease(buttons)
        @robot.mouseRelease(buttons)
    end
    

    def mouseWheel(wheelAmt)
        @robot.mouseWheel(wheelAmt)
    end
    

    def setAutoDelay(ms)
        @robot.setAutoDelay(ms)
    end
    

    def setAutoWaitForIdle(isOn)
        @robot.setAutoWaitForIdle(isOn)
    end
    

    def toString()
        return @robot.to_s
    end
    alias_method :to_s, :toString
    

    def waitForIdle()
        @robot.waitForIdle()
    end
    

    def on()
    end
    

    def off()
    end
end

require "org/allbinary/input/automation/PointHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"

class InputRobot
    NAME = "Java Robot"
end

