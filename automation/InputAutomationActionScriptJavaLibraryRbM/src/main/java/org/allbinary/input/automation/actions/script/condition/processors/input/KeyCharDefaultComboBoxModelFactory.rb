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

# require "javax/swing/DefaultComboBoxModel"
# require "javax/swing/KeyStroke"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition; module Processors; module Input

class KeyCharDefaultComboBoxModelFactory
    

    def initialize()
    end
    

    def self.getInstance()
        defaultComboBoxModel = DefaultComboBoxModel.new()
        keyArray = ::Org::Allbinary::Input::KeySingletonFactory.getArray()
        (0...keyArray.length).each do |index|
            nextKey = keyArray[index]
            keyStroke = KeyStroke.getKeyStroke(nextKey.to_i, 0)
            keyChar = ::Abbot::Tester::KeyStrokeMap.getChar(keyStroke)
            defaultComboBoxModel.addElement((keyChar).to_s)
        end
        return defaultComboBoxModel
    end
end

module ::Abbot; module Tester; autoload :KeyStrokeMap, "abbot/tester/KeyStrokeMap" unless const_defined?(:KeyStrokeMap, false); end; end
module ::Org; module Allbinary; module Input; autoload :KeySingletonFactory, "org/allbinary/input/KeySingletonFactory" unless const_defined?(:KeySingletonFactory, false); end; end; end

end; end; end; end; end; end; end; end; end

