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
# package org.allbinary.media

# require "java/awt/Dimension"
# require "java/awt/DisplayMode"
# require "java/awt/GraphicsDevice"
# require "java/awt/GraphicsEnvironment"
# require "java/awt/Toolkit"

class DisplaysUtil
    

    def self.getInstance()
        return DisplaysUtil.instance
    end
    

    def getPrimaryScreenSize()
        dimension = Toolkit.getDefaultToolkit().getScreenSize()
        return Rectangle.new(PointFactory.getInstance().ZERO_ZERO, dimension.width, dimension.height)
    end
    

    def getScreenSizesAsRectangleArray()
        graphicsEnvironment = GraphicsEnvironment.getLocalGraphicsEnvironment()
        graphicsDeviceArray = graphicsEnvironment.getScreenDevices()
        graphicsDevice = nil
        displayMode = nil
        rectangle = nil
        size = graphicsDeviceArray.length
        rectangleArray = Array.new(size, nil)
        (0...size).each do |index|
            graphicsDevice = graphicsDeviceArray[index]
            displayMode = graphicsDevice.getDisplayMode()
            rectangle = Rectangle.new(PointFactory.getInstance().ZERO_ZERO, displayMode.getWidth(), displayMode.getHeight())
            rectangleArray[index] = rectangle
        end
        return rectangleArray
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"

class DisplaysUtil
    @@instance = DisplaysUtil.new()
end

