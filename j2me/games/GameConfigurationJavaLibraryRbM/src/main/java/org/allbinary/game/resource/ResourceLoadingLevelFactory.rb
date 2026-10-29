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
# package org.allbinary.game.resource


class ResourceLoadingLevelFactory
    attr_accessor :LOAD_EARLY, :LOAD_TOUCH, :LOAD_GAME, :LEVEL, :MAX_LEVEL, :LOAD_ALL, :RESOURCE_LOADING_LEVEL_ARRAY

    def initialize_fields
        @LOAD_EARLY = ResourceLoadingLevel.new("Load Early", 2147483647)
        @LOAD_TOUCH = ResourceLoadingLevel.new("Load Touch", 2147483647 - 1)
        @LOAD_GAME = ResourceLoadingLevel.new("Load Game", 2147483647 - 2)
        @LEVEL = ResourceLoadingLevel.new("Level", 2147483647 - 99)
        @MAX_LEVEL = ResourceLoadingLevel.new("Max Level", 2147483647 - 100)
        @LOAD_ALL = ResourceLoadingLevel.new("Load All", -1)
        @RESOURCE_LOADING_LEVEL_ARRAY = [@LOAD_ALL, @MAX_LEVEL, @LEVEL, @LOAD_GAME, @LOAD_TOUCH, @LOAD_EARLY]
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ResourceLoadingLevelFactory.instance
    end
    

    def getLevelString(level)
        (0...@RESOURCE_LOADING_LEVEL_ARRAY.length).each do |index|
            if level == @RESOURCE_LOADING_LEVEL_ARRAY[index].getLevel()
                return @RESOURCE_LOADING_LEVEL_ARRAY[index].getName()
            end
        end
        return (level).to_s
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/resource/ResourceLoadingLevel"

class ResourceLoadingLevelFactory
    @@instance = ResourceLoadingLevelFactory.new()
end

