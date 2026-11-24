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
# package org.allbinary.input.automation.robot.osgi


module ::Org; module Allbinary; module Input; module Automation; module Robot; module Osgi

class InputAutomationRobotUtil
    

    def initialize()
    end
    

    # throws Exception
    def self.getChangeEvent(inputRobotInterface)
        inputAutomationRobotInterfaceWrapper = InputAutomationRobotInterfaceWrapper.new(inputRobotInterface)
        inputAutomationRobotChangeEvent = InputAutomationRobotChangeEvent.new(inputAutomationRobotInterfaceWrapper)
        return inputAutomationRobotChangeEvent
    end
end

module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotInterface, "org/allbinary/input/automation/robot/InputRobotInterface" unless const_defined?(:InputRobotInterface, false); end; end; end; end; end
autoload :InputAutomationRobotChangeEvent, "org/allbinary/input/automation/robot/osgi/InputAutomationRobotChangeEvent" unless const_defined?(:InputAutomationRobotChangeEvent, false)
autoload :InputAutomationRobotInterfaceWrapper, "org/allbinary/input/automation/robot/osgi/InputAutomationRobotInterfaceWrapper" unless const_defined?(:InputAutomationRobotInterfaceWrapper, false)

end; end; end; end; end; end

