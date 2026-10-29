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
# require "javax/swing"

class InputAutomationTypeDefaultComboBoxModelFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance()
        defaultComboBoxModel = DefaultComboBoxModel.new()
        set = InputRobotFactory.getInstance().get().keySet()
        nameArray = set.toArray()
        size = nameArray.length
        (0...size).each do |index|
            defaultComboBoxModel.addElement(nameArray[index])
        end
        return defaultComboBoxModel
    end
end

require "org/allbinary/input/automation/robot/InputRobotFactory"

