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
# package org.allbinary.input.automation.actions.script.condition.processors.input

# require "java/util/Set"
# require "javax/swing/DefaultComboBoxModel"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; module Input

class InputAutomationTypeDefaultComboBoxModelFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance()
        defaultComboBoxModel = DefaultComboBoxModel.new()
        set = ::Org::Allbinary::Input::Automation::Robot::InputRobotFactory.getInstance().get().keySet()
        nameArray = set.toArray()
        size = nameArray.length
        (0...size).each do |index|
            defaultComboBoxModel.addElement(nameArray[index])
        end
        return defaultComboBoxModel
    end
end

module ::Org; module Allbinary; module Input; module Automation; module Robot; autoload :InputRobotFactory, "org/allbinary/input/automation/robot/InputRobotFactory" unless const_defined?(:InputRobotFactory, false); end; end; end; end; end

end; end; end; end; end; end; end; end; end

