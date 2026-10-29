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
# package org.allbinary.canvas


class GameGlobalsFactory
    attr_accessor :newCanvas, :newDisplaybleTime, :point

    def initialize_fields
        @newCanvas = true
        @newDisplaybleTime = ((-2147483648)).to_i
        @point = PointFactory.getInstance().ZERO_ZERO
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GameGlobalsFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/graphics/PointFactory"

class GameGlobalsFactory
    @@instance = GameGlobalsFactory.new()
end

