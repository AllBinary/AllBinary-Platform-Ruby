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
# package org.allbinary.graphics.displayable


class GameTickDisplayInfoSingleton
    attr_accessor :displayInfoSingleton, :lastWidth, :lastHeight, :lastHalfWidth, :lastHalfHeight

    def initialize_fields
        @displayInfoSingleton = DisplayInfoSingleton.getInstance()
        @lastWidth = @displayInfoSingleton.getLastWidth()
        @lastHeight = @displayInfoSingleton.getLastHeight()
        @lastHalfWidth = @displayInfoSingleton.getLastHalfWidth()
        @lastHalfHeight = @displayInfoSingleton.getLastHalfHeight()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GameTickDisplayInfoSingleton.instance
    end
    

    def update()
        @lastWidth = @displayInfoSingleton.getLastWidth()
        @lastHeight = @displayInfoSingleton.getLastHeight()
        @lastHalfWidth = @displayInfoSingleton.getLastHalfWidth()
        @lastHalfHeight = @displayInfoSingleton.getLastHalfHeight()
    end
    

    def getLastWidth()
        return @lastWidth
    end
    

    def getLastHeight()
        return @lastHeight
    end
    

    def getLastHalfWidth()
        return @lastHalfWidth
    end
    

    def getLastHalfHeight()
        return @lastHalfHeight
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/displayable/DisplayInfoSingleton"

class GameTickDisplayInfoSingleton
    @@instance = GameTickDisplayInfoSingleton.new()
end

