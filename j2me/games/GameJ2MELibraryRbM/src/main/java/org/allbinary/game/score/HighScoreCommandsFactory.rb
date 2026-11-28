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
# package org.allbinary.game.score

require "java/lang/JavaOverload"
require "org/allbinary/game/score/HighScoreCommandsBaseFactory"

module ::Org; module Allbinary; module Game; module Score

class HighScoreCommandsFactory < HighScoreCommandsBaseFactory
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        super([HighScoreCommands.getInstance().PERSONAL, HighScoreCommands.getInstance().WORLD])
    end

    def self.instance()
        HighScoreCommandsFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        HighScoreCommandsFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = HighScoreCommandsFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "HighScoreCommandsFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
autoload :HighScoreCommands, "org/allbinary/game/score/HighScoreCommands" unless const_defined?(:HighScoreCommands, false)

begin
    HighScoreCommandsFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

