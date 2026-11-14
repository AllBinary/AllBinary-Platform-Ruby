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
        GameConfigurationTextInput.java_static_fields unless @java_static_fields_started
        return defined?(@@hashtable) ? @@hashtable : nil
    end

    def self.hashtable=(value)
        GameConfigurationTextInput.java_static_fields unless @java_static_fields_started
        @@hashtable = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@hashtable = StdUtil.getInstance().createHashtable()
            const_set(:SIMULATOR_IP, GameConfigurationTextInput.new("IP: ", "192.168.1.3"))
            const_set(:SIMULATOR_PORT, GameConfigurationTextInput.new("Port: ", "8010"))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameConfigurationTextInput"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SIMULATOR_IP, :SIMULATOR_PORT].include?(name)
        end
        super
    end
end

autoload :TextField, "javax/microedition/lcdui/TextField"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"

begin
    GameConfigurationTextInput.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

