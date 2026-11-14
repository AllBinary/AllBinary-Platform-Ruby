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
# package org.allbinary.media.image

# require "java/awt"
# require "java/awt/image/BufferedImage"

class ImageUnifierUtil
    attr_accessor :logUtil, :imageUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @imageUtil = ImageUtil.getInstance()
    end
    

    def self.getInstance()
        return ImageUnifierUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def getDefaultConfiguration()
        ge = GraphicsEnvironment.getLocalGraphicsEnvironment()
        gd = ge.getDefaultScreenDevice()
        return gd.getDefaultConfiguration()
    end
    

    def getImage(bufferedImageArray, imageUnifierProperties)
        newBufferedImage = @imageUtil.create(imageUnifierProperties.getWidth(), imageUnifierProperties.getHeight())
        commonLabels = CommonLabels.getInstance()
        @logUtil.putF("Setting Image - " + (commonLabels.WIDTH_LABEL).to_s + (newBufferedImage.getWidth()).to_s + (commonLabels.HEIGHT_LABEL).to_s + (newBufferedImage.getHeight()).to_s, self, "getImage")
        g = newBufferedImage.createGraphics()
        columnIndex = 0
        rowIndex = 0
        (0...bufferedImageArray.length).each do |index|
            x = imageUnifierProperties.getImageUnifierCell().getWidth().to_i * ((columnIndex += 1) - 1)
            y = imageUnifierProperties.getImageUnifierCell().getHeight().to_i * rowIndex
            @logUtil.putF("Adding Image: " + (index).to_s + " x: " + (x).to_s + " y: " + (y).to_s, self, "getImage")
            g.drawImage(bufferedImageArray[index], x, y, imageUnifierProperties.getImageUnifierCell().getWidth().to_i, imageUnifierProperties.getImageUnifierCell().getHeight().to_i, nil)
            totalColumnsMinusOne = (imageUnifierProperties.getColumns().to_i - 1)
            if columnIndex > totalColumnsMinusOne
                rowIndex += 1
                columnIndex = 0
            end
        end
        g.dispose()
        return newBufferedImage
    end

    def self.instance()
        ImageUnifierUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageUnifierUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageUnifierUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageUnifierUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :ImageUnifierProperties, "org/allbinary/media/image/ImageUnifierProperties"
autoload :ImageUtil, "org/allbinary/media/image/ImageUtil"

begin
    ImageUnifierUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

