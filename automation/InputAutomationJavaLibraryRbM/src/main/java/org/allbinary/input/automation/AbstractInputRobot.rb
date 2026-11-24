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

# require "java/awt/Point"
# require "java/awt/Rectangle"
# require "javax/help/HelpSet"

module ::Org; module Allbinary; module Input; module Automation

class AbstractInputRobot
    attr_accessor :logUtil, :helpSet

    def jfields_org_allbinary_input_automation_AbstractInputRobot
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @helpSet = nil unless instance_variable_defined?(:@helpSet)
    end
    

    def initialize(helpSet)
        jfields_org_allbinary_input_automation_AbstractInputRobot
        self.setHelpSet(helpSet)
    end
    

    def getHelpSet()
        return @helpSet
    end
    

    def mouseMove_j1(point)
        self.mouseMove(point.x, point.y)
        @logUtil.putF("Moved Mouse To: x: " + (point.x).to_s + " y: " + (point.y).to_s, self, "moveMouse")
    end
    

    # throws Exception
    def mouseMoveToTarget_j3(rectangle, x, y)
        point = PointHelper.getCenterPoint(rectangle)
        self.mouseMove(point.x + x, point.y + y)
        @logUtil.putF("Moved Mouse To: x: " + (point.x).to_s + " y: " + (point.y).to_s + " in the middle of: " + (rectangle).to_s, self, "moveMouseToTarget")
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
    

    def mouseMove_j2(x, y)
        raise RuntimeError.new()
    end

    def mouseMove(*java_overload_args)
        return mouseMove_j1(*java_overload_args) if java_overload_args.length == 1
        return mouseMove_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method mouseMove takes #{java_overload_args.length} arguments"
    end
    

    def setHelpSet(helpSet)
        @helpSet = helpSet
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :PointHelper, "org/allbinary/input/automation/PointHelper" unless const_defined?(:PointHelper, false)

end; end; end; end

