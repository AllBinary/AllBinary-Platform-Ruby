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

# require "javax/swing"

class KeyCharDefaultComboBoxModelFactory
    

    def initialize()
    end
    

    def self.getInstance()
        defaultComboBoxModel = DefaultComboBoxModel.new()
        keyArray = KeySingletonFactory.getArray()
        (0...keyArray.length).each do |index|
            nextKey = keyArray[index]
            keyStroke = KeyStroke.getKeyStroke(nextKey.to_i, 0)
            keyChar = KeyStrokeMap.getChar(keyStroke)
            defaultComboBoxModel.addElement((keyChar).to_s)
        end
        return defaultComboBoxModel
    end
end

require "abbot/tester/KeyStrokeMap"
require "org/allbinary/input/KeySingletonFactory"

