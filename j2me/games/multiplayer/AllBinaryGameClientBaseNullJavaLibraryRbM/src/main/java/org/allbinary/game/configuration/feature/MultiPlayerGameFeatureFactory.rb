# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.configuration.feature

# require "javax/microedition/lcdui/Canvas"

class MultiPlayerGameFeatureFactory
    

    def self.getInstance()
        return MultiPlayerGameFeatureFactory.instance
    end
    

    def initialize()
    end
    

    def addCommands(anyType)
        gameCommandsFactory = GameCommandsFactory.getInstance()
        canvas = anyType
        canvas.addCommand(gameCommandsFactory.QUIT_COMMAND)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/commands/GameCommandsFactory"

class MultiPlayerGameFeatureFactory
    @@instance = MultiPlayerGameFeatureFactory.new()
end

