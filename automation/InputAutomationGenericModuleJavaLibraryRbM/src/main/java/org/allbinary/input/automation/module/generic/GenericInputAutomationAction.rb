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
# package org.allbinary.input.automation.module.generic

require "java/lang/JavaOverload"
require "org/allbinary/input/automation/module/InputAutomationActionInterface"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Generic

class GenericInputAutomationAction
    include ::Org::Allbinary::Input::Automation::ModulePackage::InputAutomationActionInterface
    

    def initialize()
    end
    

    # throws Exception
    def test()
    end
    java_overload :test, 0
    

    def getInputRobotInterfaceArray()
        return nil
    end
    java_overload :getInputRobotInterfaceArray, 0
end

module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotInterface, "org/allbinary/input/automation/robot/InputRobotInterface" unless const_defined?(:InputRobotInterface, false); end; end; end; end; end

end; end; end; end; end; end

