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
# package org.allbinary.game.configuration

# require "javax/microedition/lcdui/TextField"

class GameConfigurationTextInput
    attr_accessor :label, :text

    def initialize_fields
        @label = StringUtil.getInstance().EMPTY_STRING
        @text = StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(label, text)
        initialize_fields
        self.setText(text)
        self.setLabel(label)
        GameConfigurationTextInput.hashtable.put(self.getLabel(), self)
    end
    

    def self.update(textField)
        anyType = textField.getLabel()
        gameConfigurationTextInput = GameConfigurationTextInput.hashtable.get(anyType)
        gameConfigurationTextInput.setText(textField.getString())
    end
    

    def setText(text)
        @text = text
    end
    

    def getText()
        return @text
    end
    

    def setLabel(label)
        @label = label
    end
    

    def getLabel()
        return @label
    end
    

    def self.getHashtable()
        return GameConfigurationTextInput.hashtable
    end

    def self.hashtable()
        return defined?(@@hashtable) ? @@hashtable : nil
    end

    def self.hashtable=(value)
        @@hashtable = value
    end
end

require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/ABHashtable"

class GameConfigurationTextInput
    @@hashtable = StdUtil.getInstance().createHashtable()
    SIMULATOR_IP = GameConfigurationTextInput.new("IP: ", "192.168.1.3")
    SIMULATOR_PORT = GameConfigurationTextInput.new("Port: ", "8010")
end

