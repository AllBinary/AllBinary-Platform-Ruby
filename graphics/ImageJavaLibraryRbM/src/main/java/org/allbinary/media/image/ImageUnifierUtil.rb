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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/media/image/ImageUnifierProperties"
require "org/allbinary/media/image/ImageUtil"

class ImageUnifierUtil
    @@instance = ImageUnifierUtil.new()
end

