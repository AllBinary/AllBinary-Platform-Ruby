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

# require "java/awt/event/KeyEvent"
# require "javax/swing"

class KeyNameDefaultComboBoxModelFactory
    

    def initialize()
    end
    

    def self.getInstance()
        defaultComboBoxModel = DefaultComboBoxModel.new()
        keyArray = KeySingletonFactory.getArray()
        (0...keyArray.length).each do |index|
            keyAsString = KeyEvent.getKeyText(keyArray[index])
            defaultComboBoxModel.addElement(keyAsString)
        end
        return defaultComboBoxModel
    end
end

require "org/allbinary/input/KeySingletonFactory"

