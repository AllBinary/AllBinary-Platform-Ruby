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
# require "java/awt/geom/AffineTransform"
# require "java/awt/image/AffineTransformOp"
# require "java/awt/image/BufferedImage"

class MirrorImageUtil
    attr_accessor :logUtil, :imageUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @imageUtil = ImageUtil.getInstance()
    end
    

    def self.getInstance()
        return MirrorImageUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def getImage(bufferedImage, verticle, horizontal)
        @logUtil.putF("Starting", self, "getImage")
        newBufferedImage = @imageUtil.create(bufferedImage.getWidth(nil), bufferedImage.getHeight(nil))
        g = newBufferedImage.createGraphics()
        if verticle
            tx = AffineTransform.getScaleInstance(1, -1)
            tx.translate(0, -bufferedImage.getHeight(nil))
            op = AffineTransformOp.new(tx, AffineTransformOp::TYPE_NEAREST_NEIGHBOR)
            bufferedImage = op.filter(bufferedImage, nil)
        end
        if horizontal
            tx = AffineTransform.getScaleInstance(-1, 1)
            tx.translate(-bufferedImage.getWidth(nil), 0)
            op = AffineTransformOp.new(tx, AffineTransformOp::TYPE_NEAREST_NEIGHBOR)
            bufferedImage = op.filter(bufferedImage, nil)
        end
        g.drawImage(bufferedImage, 0, 0, bufferedImage.getWidth(nil), bufferedImage.getHeight(nil), nil)
        g.dispose()
        return newBufferedImage
    end
    

    def getImages(bufferedImage, verticle, horizontal)
        width = bufferedImage.getWidth()
        height = bufferedImage.getHeight()
        cellHeight = height
        cellWidth = height
        numberOfFramesPerOrientation = width / cellWidth
        numberOfFrames = numberOfFramesPerOrientation
        if verticle
            numberOfFrames *= 2
        end
        if horizontal
            numberOfFrames *= 2
        end
        @logUtil.putF("numberOfFramesPerOrientation: " + (numberOfFramesPerOrientation).to_s + " numberOfFrames: " + (numberOfFrames).to_s, self, "getImages")
        bufferedImageArray = Array.new(numberOfFrames, nil)
        y = 0
        (0...numberOfFramesPerOrientation).each do |index|
            x = index * cellWidth
            bufferedImageArray[index] = bufferedImage.getSubimage(x, y, cellWidth, cellHeight)
        end
        (0...numberOfFramesPerOrientation).each do |index|
            bufferedImageArray[index + numberOfFramesPerOrientation] = self.getImage(bufferedImageArray[index], verticle, horizontal)
        end
        return bufferedImageArray
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/media/image/ImageUtil"

class MirrorImageUtil
    @@instance = MirrorImageUtil.new()
end

