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

class ImagesRatioUtil
    attr_accessor :logUtil, :imageUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @imageUtil = ImageUtil.getInstance()
    end
    

    def self.getInstance()
        return ImagesRatioUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def isEqual(bufferedImageArray, totalImages)
        end_ = totalImages
        if bufferedImageArray.length < totalImages
            end_ = bufferedImageArray.length
        end
        ratio = ((bufferedImageArray[0].getWidth()).to_f / bufferedImageArray[0].getHeight())
        (1...end_).each do |index|
            if ratio != ((bufferedImageArray[index].getWidth()).to_f / bufferedImageArray[index].getHeight())
                return false
            end
        end
        return true
    end
    

    def getAverage(bufferedImageArray, totalImages)
        ratio = 0.0
        end_ = totalImages
        if bufferedImageArray.length < totalImages
            end_ = bufferedImageArray.length
        end
        (0...end_).each do |index|
            ratio += ((bufferedImageArray[index].getWidth()).to_f / bufferedImageArray[index].getHeight())
        end
        return (ratio / (end_).to_f)
    end
    

    # throws Exception
    def fudge(bufferedImage, ratio)
        imageRatio = ((bufferedImage.getWidth()).to_f / bufferedImage.getHeight())
        point = Point.new()
        newHeight = bufferedImage.getHeight()
        newWidth = bufferedImage.getWidth()
        if ratio > imageRatio
            newWidth = (((bufferedImage.getHeight()).to_f * ratio)).to_i
            point.x = (newWidth - bufferedImage.getWidth()) / 2
        else
            newHeight = (((bufferedImage.getWidth()).to_f / ratio)).to_i
            point.y = (newHeight - bufferedImage.getHeight()) / 2
        end
        commonLabels = CommonLabels.getInstance()
        @logUtil.putF((commonLabels.WIDTH_LABEL + bufferedImage.getWidth()).to_s + " newWidth: " + (newWidth).to_s + (commonLabels.HEIGHT_LABEL).to_s + (bufferedImage.getHeight()).to_s + " newHeight: " + (newHeight).to_s + " needed ratio: " + (((newWidth).to_f / (newHeight).to_f)).to_s, self, "fudge")
        newBufferedImage = @imageUtil.create(newWidth, newHeight)
        g = newBufferedImage.createGraphics()
        if point.x > 0
            firstColumnBufferedImage = bufferedImage.getSubimage(0, 0, 1, bufferedImage.getHeight())
            lastColumnBufferedImage = bufferedImage.getSubimage(bufferedImage.getWidth() - 1, 0, 1, bufferedImage.getHeight())
            @logUtil.putF("Draw some columns to fill in gap", self, "fudge")
            (0...point.x).each do |index|
                g.drawImage(firstColumnBufferedImage, index, 0, nil)
                g.drawImage(lastColumnBufferedImage, newWidth - index, 0, nil)
            end
        end
        if point.y > 0
            firstRowBufferedImage = bufferedImage.getSubimage(0, 0, bufferedImage.getWidth(), 1)
            lastRowBufferedImage = bufferedImage.getSubimage(0, bufferedImage.getHeight() - 1, bufferedImage.getWidth(), 1)
            @logUtil.putF("Draw some rows to fill in gap", self, "fudge")
            (0...point.y).each do |index|
                g.drawImage(firstRowBufferedImage, 0, index, nil)
                g.drawImage(lastRowBufferedImage, 0, newHeight - index, nil)
            end
        end
        g.drawImage(bufferedImage, point.x, point.y, bufferedImage.getWidth(), bufferedImage.getHeight(), nil)
        return newBufferedImage
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def fudge(bufferedImageArray, totalImages, ratio)
        end_ = totalImages
        if bufferedImageArray.length < totalImages
            end_ = bufferedImageArray.length
        end
        fudgedBufferedImageArray = Array.new(end_, nil)
        (0...end_).each do |index|
            fudgedBufferedImageArray[index] = fudge(bufferedImageArray[index], ratio)
        end
        return fudgedBufferedImageArray
    end

    def self.instance()
        ImagesRatioUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImagesRatioUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImagesRatioUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImagesRatioUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :ImageUtil, "org/allbinary/media/image/ImageUtil"

begin
    ImagesRatioUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

