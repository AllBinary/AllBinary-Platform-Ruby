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
# package org.allbinary.game.configuration.persistance


class GameDifficultyFactory
    attr_accessor :level

    def initialize_fields
        @level = 0
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GameDifficultyFactory.instance
    end
    

    def setLevel(level)
        @level = level
    end
    

    def getLevel()
        return @level
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class GameDifficultyFactory
    @@instance = GameDifficultyFactory.new()
end

