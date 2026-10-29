#
# AllBinary Open License Version 1
# Copyright (c) 2022 AllBinary
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
# package org.allbinary.graphics.displayable.screen

# require "javax/microedition/lcdui/Canvas"
# require "javax/microedition/lcdui/Command"
# require "javax/microedition/lcdui/CommandListener"

class AboutCommandProcessor
    

    def self.getInstance()
        return AboutCommandProcessor.instance
    end
    

    def process(midletCommandListener, command, canvas)
        midletCommandListener.commandAction(command, canvas)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class AboutCommandProcessor
    @@instance = AboutCommandProcessor.new()
end

