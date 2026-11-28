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
# require "java/awt/geom/AffineTransform"
# require "java/awt/image/AffineTransformOp"
# require "java/awt/image/BufferedImage"

module ::Org; module Allbinary; module Media; module Image

class MirrorImageUtil
    attr_accessor :logUtil, :imageUtil

    def jfields_org_allbinary_media_image_MirrorImageUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @imageUtil = ImageUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_media_image_MirrorImageUtil
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
        MirrorImageUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        MirrorImageUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = MirrorImageUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MirrorImageUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :ImageUtil, "org/allbinary/media/image/ImageUtil" unless const_defined?(:ImageUtil, false)

begin
    MirrorImageUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

