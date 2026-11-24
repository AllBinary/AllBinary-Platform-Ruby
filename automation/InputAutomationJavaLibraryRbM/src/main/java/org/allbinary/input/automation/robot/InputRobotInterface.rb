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

# require "java/awt/Rectangle"
# require "java/awt/Color"
# require "java/awt/Point"
# require "java/awt/image/BufferedImage"
# require "javax/help/HelpSet"

module ::Org; module Allbinary; module Input; module Automation; module Robot

module InputRobotInterface
    

    def getName()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getHelpSet()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def createScreenCapture(screenRect)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def delay(ms)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getAutoDelay()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getPixelColor(x, y)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def isAutoWaitForIdle()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def keyPress(keycode)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def keyRelease(keycode)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getMousePoint()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def mouseMove_j2(x, y)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def mousePress(buttons)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def mouseRelease(buttons)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def mouseWheel(wheelAmt)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setAutoDelay(ms)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setAutoWaitForIdle(isOn)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def toString()
        return super if defined?(super)
        raise NotImplementedError
    end
    alias_method :to_s, :toString
    

    def waitForIdle()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def mouseMove_j1(point)
        return super if defined?(super)
        raise NotImplementedError
    end

    def mouseMove(*java_overload_args)
        return mouseMove_j2(*java_overload_args) if java_overload_args.length == 2
        return mouseMove_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method mouseMove takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def mouseMoveToTarget_j1(rectangle)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def mouseMoveToTarget_j3(rectangle, x, y)
        return super if defined?(super)
        raise NotImplementedError
    end

    def mouseMoveToTarget(*java_overload_args)
        return mouseMoveToTarget_j1(*java_overload_args) if java_overload_args.length == 1
        return mouseMoveToTarget_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method mouseMoveToTarget takes #{java_overload_args.length} arguments"
    end
end

end; end; end; end; end

