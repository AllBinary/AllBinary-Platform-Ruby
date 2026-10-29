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

module InputRobotInterface
    

    def getName()
        raise NotImplementedError
    end
    

    def getHelpSet()
        raise NotImplementedError
    end
    

    def createScreenCapture(screenRect)
        raise NotImplementedError
    end
    

    def delay(ms)
        raise NotImplementedError
    end
    

    def getAutoDelay()
        raise NotImplementedError
    end
    

    def getPixelColor(x, y)
        raise NotImplementedError
    end
    

    def isAutoWaitForIdle()
        raise NotImplementedError
    end
    

    def keyPress(keycode)
        raise NotImplementedError
    end
    

    def keyRelease(keycode)
        raise NotImplementedError
    end
    

    def getMousePoint()
        raise NotImplementedError
    end
    

    def mouseMove(x, y)
        raise NotImplementedError
    end
    

    def mousePress(buttons)
        raise NotImplementedError
    end
    

    def mouseRelease(buttons)
        raise NotImplementedError
    end
    

    def mouseWheel(wheelAmt)
        raise NotImplementedError
    end
    

    def setAutoDelay(ms)
        raise NotImplementedError
    end
    

    def setAutoWaitForIdle(isOn)
        raise NotImplementedError
    end
    

    def toString()
        raise NotImplementedError
    end
    alias_method :to_s, :toString
    

    def waitForIdle()
        raise NotImplementedError
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def mouseMove(point)
        raise NotImplementedError
    end
    

    # throws Exception
    def mouseMoveToTarget(rectangle)
        raise NotImplementedError
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def mouseMoveToTarget(rectangle, x, y)
        raise NotImplementedError
    end
end

