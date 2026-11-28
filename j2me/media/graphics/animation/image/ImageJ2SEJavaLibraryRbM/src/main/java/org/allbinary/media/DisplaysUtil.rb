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

module ::Org; module Allbinary; module Media

class DisplaysUtil
    

    def self.getInstance()
        return @@instance
    end
    

    def getPrimaryScreenSize()
        dimension = Toolkit.getDefaultToolkit().getScreenSize()
        return ::Org::Allbinary::Graphics::Rectangle.new(::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO, dimension.width, dimension.height)
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
            rectangle = ::Org::Allbinary::Graphics::Rectangle.new(::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO, displayMode.getWidth(), displayMode.getHeight())
            rectangleArray[index] = rectangle
        end
        return rectangleArray
    end

    def self.instance()
        DisplaysUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DisplaysUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DisplaysUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DisplaysUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end

begin
    DisplaysUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

