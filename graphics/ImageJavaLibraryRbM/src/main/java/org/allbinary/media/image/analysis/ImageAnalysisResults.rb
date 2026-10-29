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


class ImageAnalysisResults
    attr_accessor :imageColorRangeResults, :imageColorResults, :averageAmbientLevel

    def initialize_fields
        @imageColorRangeResults = nil
        @imageColorResults = nil
        @averageAmbientLevel = 0.0
    end
    

    def initialize()
        initialize_fields
        @imageColorRangeResults = ImageColorRangeResults.new()
        @imageColorResults = ImageColorResults.new()
    end
    

    def getImageColorRangeResults()
        return @imageColorRangeResults
    end
    

    def setImageColorRangeResults(imageColorRangeResults)
        @imageColorRangeResults = imageColorRangeResults
    end
    

    def getAverageAmbientLevel()
        return @averageAmbientLevel
    end
    

    def setAverageAmbientLevel(averageAmbientLevel)
        @averageAmbientLevel = averageAmbientLevel
    end
    

    def getImageColorResults()
        return @imageColorResults
    end
    

    def setImageColorResults(imageColorResults)
        @imageColorResults = imageColorResults
    end
end

require "org/allbinary/media/image/analysis/ImageColorRangeResults"
require "org/allbinary/media/image/analysis/ImageColorResults"

