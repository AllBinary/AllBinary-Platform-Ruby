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

# require "java/awt/Graphics2D"
# require "java/awt/Image"
# require "java/awt/image/BufferedImage"

class ImageJ2SERotationUtil
    attr_accessor :imageUtil, :imageJ2SEUtil, :TWO_PIE

    def initialize_fields
        @imageUtil = ImageUtil.getInstance()
        @imageJ2SEUtil = ImageJ2SEUtil.getInstance()
        @TWO_PIE = 2 * Math::PI
    end
    

    def self.getInstance()
        return ImageJ2SERotationUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def getRotatedImage(bufferedImage, totalAngle)
        return self.getRotatedImageRadians(bufferedImage, @TWO_PIE * (totalAngle).to_f / 360.0)
    end
    

    def getRotatedImageRadians(bufferedImage, radians)
        newBufferedImage = @imageUtil.create(bufferedImage.getWidth(nil), bufferedImage.getHeight(nil))
        return self.drawRotatedImageRadians(bufferedImage, newBufferedImage, newBufferedImage.createGraphics(), radians)
    end
    

    def drawRotatedImageRadians(bufferedImage, newBufferedImage, g, radians)
        g.rotate(radians, newBufferedImage.getWidth(nil) / 2, newBufferedImage.getHeight(nil) / 2)
        g.drawImage(bufferedImage, 0, 0, bufferedImage.getWidth(nil), bufferedImage.getHeight(nil), nil)
        g.dispose()
        return newBufferedImage
    end
    

    def rotateImage(bufferedImage, newBufferedImage, totalAngle)
        g = newBufferedImage.createGraphics()
        g.setBackground(@imageJ2SEUtil.TRANSPARENT_COLOR)
        g.clearRect(0, 0, newBufferedImage.getWidth(), newBufferedImage.getHeight())
        return self.drawRotatedImageRadians(bufferedImage, newBufferedImage, g, @TWO_PIE * (totalAngle).to_f / 360.0)
    end
    

    def createRotatedImage(bufferedImage, newBufferedImage, totalAngle)
        g = newBufferedImage.createGraphics()
        return self.drawRotatedImageRadians(bufferedImage, newBufferedImage, g, @TWO_PIE * (totalAngle).to_f / 360.0)
    end
    

    def getRotatedImages(bufferedImage, numberOfFrames, totalAngle)
        bufferedImageArray = Array.new(numberOfFrames, nil)
        arc = (@TWO_PIE) * (totalAngle).to_f / 360.0
        size = bufferedImageArray.length
        (0...size).each do |index|
            radians = (arc / (size).to_f) * (index).to_f
            bufferedImageArray[index] = self.getRotatedImageRadians(bufferedImage, radians)
        end
        return bufferedImageArray
    end
    

    def createSpriteImage(bufferedImageArray)
        columns = 9
        rows = 0
        size = bufferedImageArray.length
        if size < columns
            columns = size
        end
        rows = (size / columns)
        if size % columns != 0
            rows += 1
        end
        firstBufferedImage = bufferedImageArray[0]
        bufferedImage = @imageUtil.create(firstBufferedImage.getWidth(nil) * columns, firstBufferedImage.getHeight(nil) * rows)
        g = bufferedImage.createGraphics()
        columnIndex = 0
        rowIndex = 0
        nextBufferedImage = nil
        (0...size).each do |index|
            if index / 9 != 0 && index % 9 == 0
                rowIndex += 1
                columnIndex = 0
            end
            nextBufferedImage = bufferedImageArray[index]
            g.drawImage(nextBufferedImage, nextBufferedImage.getWidth(nil) * columnIndex, nextBufferedImage.getHeight(nil) * rowIndex, nextBufferedImage.getWidth(nil), nextBufferedImage.getHeight(nil), nil)
            columnIndex += 1
        end
        g.dispose()
        return bufferedImage
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/media/image/ImageJ2SEUtil"
require "org/allbinary/media/image/ImageUtil"

class ImageJ2SERotationUtil
    @@instance = ImageJ2SERotationUtil.new()
end

