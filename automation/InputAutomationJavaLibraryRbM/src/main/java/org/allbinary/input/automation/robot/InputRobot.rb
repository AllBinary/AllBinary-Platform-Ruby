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

require "java/lang/JavaOverload"
# require "java/awt/Robot"
# require "java/awt/GraphicsDevice"
# require "java/awt/MouseInfo"
# require "java/awt/Point"
# require "java/awt/Rectangle"
# require "java/awt/Color"
# require "java/awt/image/BufferedImage"
# require "javax/help/HelpSet"
require "org/allbinary/input/automation/robot/InputRobotInterface"

module ::Org; module Allbinary; module Input; module Automation; module Robot

class InputRobot
    include InputRobotInterface
    attr_accessor :logUtil, :robot

    def jfields_org_allbinary_input_automation_robot_InputRobot
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @robot = nil unless instance_variable_defined?(:@robot)
    end
    

    def initialize(graphicsDevice)
        jfields_org_allbinary_input_automation_robot_InputRobot
        @robot = Robot.new(graphicsDevice)
    end
    

    def getName()
        return InputRobot::NAME
    end
    java_overload :getName, 0
    

    def getHelpSet()
        return nil
    end
    java_overload :getHelpSet, 0
    

    def getMousePoint()
        point = MouseInfo.getPointerInfo().getLocation()
        return point
    end
    java_overload :getMousePoint, 0
    

    # throws Exception
    def mouseMoveToTarget_j3(rectangle, x, y)
        point = ::Org::Allbinary::Input::Automation::PointHelper.getCenterPoint(rectangle)
        @robot.mouseMove(point.x + x, point.y + y)
        message = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Moved Mouse To: x: ").appendint(((point.x).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(" y: ").appendint(((point.y).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(" in the middle of: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(rectangle)).to_s
        @logUtil.putF(message, self, "moveMouseToTarget")
    end
    

    def mouseMove_j1(point)
        self.mouseMove(point.x, point.y)
    end
    

    def mouseMove_j2_1(x, y)
        @robot.mouseMove(x, y)
        message = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Moved Mouse To: x: ").appendint(x).append(" y: ").appendint(y).to_s
        @logUtil.putF(message, self, "moveMouse")
    end
    

    # throws Exception
    def mouseMoveToTarget_j1(rectangle)
        self.mouseMoveToTarget(rectangle, 0, 0)
    end

    def mouseMoveToTarget(*java_overload_args)
        return mouseMoveToTarget_j3(*java_overload_args) if java_overload_args.length == 3
        return mouseMoveToTarget_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method mouseMoveToTarget takes #{java_overload_args.length} arguments"
    end
    

    def createScreenCapture(screenRect)
        return @robot.createScreenCapture(screenRect)
    end
    java_overload :createScreenCapture, 1
    

    def delay(ms)
        @robot.delay(ms)
    end
    java_overload :delay, 1
    

    def getAutoDelay()
        return @robot.getAutoDelay()
    end
    java_overload :getAutoDelay, 0
    

    def getPixelColor(x, y)
        return @robot.getPixelColor(x, y)
    end
    java_overload :getPixelColor, 2
    

    def isAutoWaitForIdle()
        return @robot.isAutoWaitForIdle()
    end
    java_overload :isAutoWaitForIdle, 0
    

    def keyPress(keycode)
        @robot.keyPress(keycode)
    end
    java_overload :keyPress, 1
    

    def keyRelease(keycode)
        @robot.keyRelease(keycode)
    end
    java_overload :keyRelease, 1
    

    def mouseMove_j2_2(x, y)
        @robot.mouseMove(x, y)
    end

    def mouseMove(*java_overload_args)
        return mouseMove_j1(*java_overload_args) if java_overload_args.length == 1
        return mouseMove_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method mouseMove takes #{java_overload_args.length} arguments"
    end

    def mouseMove_j2(*java_overload_args)
        return mouseMove_j2_1(*java_overload_args) if true && java_overload_args[0].is_a?(::Integer) && java_overload_args[1].is_a?(::Integer)
        return mouseMove_j2_2(*java_overload_args)
    end
    

    def mousePress(buttons)
        @robot.mousePress(buttons)
    end
    java_overload :mousePress, 1
    

    def mouseRelease(buttons)
        @robot.mouseRelease(buttons)
    end
    java_overload :mouseRelease, 1
    

    def mouseWheel(wheelAmt)
        @robot.mouseWheel(wheelAmt)
    end
    java_overload :mouseWheel, 1
    

    def setAutoDelay(ms)
        @robot.setAutoDelay(ms)
    end
    java_overload :setAutoDelay, 1
    

    def setAutoWaitForIdle(isOn)
        @robot.setAutoWaitForIdle(isOn)
    end
    java_overload :setAutoWaitForIdle, 1
    

    def toString()
        return @robot.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def waitForIdle()
        @robot.waitForIdle()
    end
    java_overload :waitForIdle, 0
    

    def on()
    end
    java_overload :on, 0
    

    def off()
    end
    java_overload :off, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:NAME, "Java Robot")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InputRobot"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NAME].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Input; module Automation; autoload :PointHelper, "org/allbinary/input/automation/PointHelper" unless const_defined?(:PointHelper, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

begin
    InputRobot.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

