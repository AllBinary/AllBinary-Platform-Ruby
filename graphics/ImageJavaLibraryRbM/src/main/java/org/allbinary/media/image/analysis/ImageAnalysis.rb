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
# package org.allbinary.media.image.analysis

# require "java/awt"
# require "java/awt/image/BufferedImage"

class ImageAnalysis
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return ImageAnalysis.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def process(bufferedImageArray, colorRangeInterface)
        commonStrings = CommonStrings.getInstance()
        @logUtil.putF((CommonLabels.getInstance().START).to_s + colorRangeInterface.to_s, self, commonStrings.PROCESS)
        imageAnalysisResultsArray = Array.new(bufferedImageArray.length, nil)
        (0...bufferedImageArray.length).each do |index|
            imageAnalysisResultsArray[index] = ImageAnalysis.process(bufferedImageArray[index], colorRangeInterface)
        end
        return imageAnalysisResultsArray
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def self.process(bufferedImage, colorRangeInterface)
        imageAnalysisResults = ImageAnalysisResults.new()
        redTotal = 0
        greenTotal = 0
        blueTotal = 0
        (0...bufferedImage.getHeight()).each do |indexY|
            (0...bufferedImage.getWidth()).each do |indexX|
                keyInteger = (bufferedImage.getRGB(indexX, indexY)).to_s
                colorCacheable = ColorCacheFactory.getInstance().get(keyInteger)
                color = colorCacheable.getColor()
                ImageAnalysis.processColorRangeResults(imageAnalysisResults, colorRangeInterface, color)
                ImageAnalysis.processImageColorResults(imageAnalysisResults.getImageColorResults(), colorRangeInterface, color)
                redTotal += color.getRed()
                greenTotal += color.getGreen()
                blueTotal += color.getBlue()
            end
        end
        totalPixels = imageAnalysisResults.getImageColorRangeResults().getTotalPixelsChecked()
        colorAverage = imageAnalysisResults.getImageColorResults().getColorAverage()
        colorAverage.setAvgRed((redTotal).to_f / (totalPixels).to_f)
        colorAverage.setAvgGreen((greenTotal).to_f / (totalPixels).to_f)
        colorAverage.setAvgBlue((blueTotal).to_f / (totalPixels).to_f)
        return imageAnalysisResults
    end
    

    def self.processColorRangeResults(imageAnalysisResults, colorRangeInterface, color)
        if colorRangeInterface.isInRange(color)
            imageAnalysisResults.getImageColorRangeResults().addMatchingPixelsChecked()
        else
        end
        imageAnalysisResults.getImageColorRangeResults().addTotalPixelsChecked()
    end
    

    def self.processImageColorResults(imageColorResults, colorRangeInterface, color)
        if color.getRed() < imageColorResults.getColorRange().getMinRed()
            imageColorResults.getColorRange().setMinRed(color.getRed())
        end
        if color.getGreen() < imageColorResults.getColorRange().getMinGreen()
            imageColorResults.getColorRange().setMinGreen(color.getGreen())
        end
        if color.getBlue() < imageColorResults.getColorRange().getMinBlue()
            imageColorResults.getColorRange().setMinBlue(color.getBlue())
        end
        if color.getRed() > imageColorResults.getColorRange().getMaxRed()
            imageColorResults.getColorRange().setMaxRed(color.getRed())
        end
        if color.getGreen() > imageColorResults.getColorRange().getMaxGreen()
            imageColorResults.getColorRange().setMaxGreen(color.getGreen())
        end
        if color.getBlue() > imageColorResults.getColorRange().getMaxBlue()
            imageColorResults.getColorRange().setMaxBlue(color.getBlue())
        end
    end

    def self.instance()
        ImageAnalysis.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ImageAnalysis.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ImageAnalysis.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageAnalysis"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :ColorCacheFactory, "org/allbinary/graphics/color/ColorCacheFactory"
autoload :ColorCacheable, "org/allbinary/graphics/color/ColorCacheable"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :ColorAverage, "org/allbinary/media/image/analysis/ColorAverage"
autoload :ColorRangeInterface, "org/allbinary/media/image/analysis/ColorRangeInterface"
autoload :ImageAnalysisResults, "org/allbinary/media/image/analysis/ImageAnalysisResults"
autoload :ImageColorResults, "org/allbinary/media/image/analysis/ImageColorResults"

begin
    ImageAnalysis.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

