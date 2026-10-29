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
# package org.allbinary.graphics.color

# require "javax/microedition/lcdui/Graphics"

class BasicColorSetUtil
    

    def self.getInstance()
        return BasicColorSetUtil.instance
    end
    

    def initialize()
    end
    

    def setBasicColorP(graphics, basicColor)
        graphics.setColor(basicColor.to_i)
    end
    

    def setBasicColorP3(graphics, basicColor, value)
        graphics.setColor(value)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/color/BasicColor"

class BasicColorSetUtil
    @@instance = BasicColorSetUtil.new()
end

