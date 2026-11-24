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
# require "java/awt/Point"
# require "java/awt/Rectangle"
# require "java/awt/Color"
# require "java/awt/image/BufferedImage"
# require "javax/help/HelpSet"
require "org/allbinary/input/automation/AbstractInputRobot"
require "org/allbinary/input/automation/robot/InputRobotInterface"

module ::Org; module Allbinary; module Input; module Automation; module Robot

class NullInputRobot < ::Org::Allbinary::Input::Automation::AbstractInputRobot
    include InputRobotInterface
    attr_accessor :logUtil

    def jfields_org_allbinary_input_automation_robot_NullInputRobot
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        super(nil)
        jfields_org_allbinary_input_automation_robot_NullInputRobot
    end
    

    def getName()
        return NullInputRobot::NAME
    end
    java_overload :getName, 0
    

    def getHelpSet()
        return nil
    end
    java_overload :getHelpSet, 0
    

    def getMousePoint()
        return ::Org::Allbinary::Input::Automation::PointFactory.getInstance(0, 0)
    end
    java_overload :getMousePoint, 0
    

    def keyPress(keycode)
        @logUtil.putF("KeyCode: " + (keycode).to_s, self, "keyPress")
    end
    java_overload :keyPress, 1
    

    def keyRelease(keycode)
        @logUtil.putF("KeyCode: " + (keycode).to_s, self, "keyRelease")
    end
    java_overload :keyRelease, 1
    

    def mouseMove_j2(x, y)
        @logUtil.putF("X: " + (x).to_s + " Y: " + (y).to_s, self, "mouseMove")
    end
    

    def mousePress(buttons)
        @logUtil.putF("Buttons: " + (buttons).to_s, self, "mousePress")
    end
    java_overload :mousePress, 1
    

    def mouseRelease(buttons)
        @logUtil.putF("Buttons: " + (buttons).to_s, self, "mouseRelease")
    end
    java_overload :mouseRelease, 1
    

    def createScreenCapture(screenRect)
        return nil
    end
    java_overload :createScreenCapture, 1
    

    def delay(ms)
    end
    java_overload :delay, 1
    

    def getAutoDelay()
        return -1
    end
    java_overload :getAutoDelay, 0
    

    def getPixelColor(x, y)
        return nil
    end
    java_overload :getPixelColor, 2
    

    def isAutoWaitForIdle()
        return false
    end
    java_overload :isAutoWaitForIdle, 0
    

    def mouseWheel(wheelAmt)
    end
    java_overload :mouseWheel, 1
    

    def setAutoDelay(ms)
    end
    java_overload :setAutoDelay, 1
    

    def setAutoWaitForIdle(isOn)
    end
    java_overload :setAutoWaitForIdle, 1
    

    def toString()
        return "DirectXWindowsInputRobot"
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def waitForIdle()
    end
    java_overload :waitForIdle, 0
    

    def mouseMove_j1(point)
        NullInputRobot.superclass.java_super_method(:mouseMove, 1).bind(self).call(point)
    end

    def mouseMove(*java_overload_args)
        return mouseMove_j2(*java_overload_args) if java_overload_args.length == 2
        return mouseMove_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method mouseMove takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def mouseMoveToTarget_j1(rectangle)
        NullInputRobot.superclass.java_super_method(:mouseMoveToTarget, 1).bind(self).call(rectangle)
    end
    

    # throws Exception
    def mouseMoveToTarget_j3(rectangle, x, y)
        NullInputRobot.superclass.java_super_method(:mouseMoveToTarget, 3).bind(self).call(rectangle, x, y)
    end

    def mouseMoveToTarget(*java_overload_args)
        return mouseMoveToTarget_j1(*java_overload_args) if java_overload_args.length == 1
        return mouseMoveToTarget_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method mouseMoveToTarget takes #{java_overload_args.length} arguments"
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

module ::Org; module Allbinary; module Input; module Automation; autoload :PointFactory, "org/allbinary/input/automation/PointFactory" unless const_defined?(:PointFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end

begin
    NullInputRobot.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

