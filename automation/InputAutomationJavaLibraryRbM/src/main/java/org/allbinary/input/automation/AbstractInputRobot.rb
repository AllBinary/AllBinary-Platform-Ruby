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
# package org.allbinary.input.automation

# require "java/awt"
# require "javax/help/HelpSet"

class AbstractInputRobot
    attr_accessor :logUtil, :helpSet

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @helpSet = nil
    end
    

    def initialize(helpSet)
        initialize_fields
        self.setHelpSet(helpSet)
    end
    

    def getHelpSet()
        return @helpSet
    end
    

    def mouseMove(point)
        self.mouseMove(point.x, point.y)
        @logUtil.putF("Moved Mouse To: x: " + (point.x).to_s + " y: " + (point.y).to_s, self, "moveMouse")
    end
    

    # throws Exception
    def mouseMoveToTarget(rectangle, x, y)
        point = PointHelper.getCenterPoint(rectangle)
        self.mouseMove(point.x + x, point.y + y)
        @logUtil.putF("Moved Mouse To: x: " + (point.x).to_s + " y: " + (point.y).to_s + " in the middle of: " + (rectangle).to_s, self, "moveMouseToTarget")
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def mouseMoveToTarget(rectangle)
        self.mouseMoveToTarget(rectangle, 0, 0)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def mouseMove(x, y)
        raise RuntimeError.new()
    end
    

    def setHelpSet(helpSet)
        @helpSet = helpSet
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/input/automation/PointHelper"

