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


module ::Org; module Allbinary; module Media; module Image; module Analysis

class ImageAnalysisResults
    attr_accessor :imageColorRangeResults, :imageColorResults, :averageAmbientLevel

    def jfields_org_allbinary_media_image_analysis_ImageAnalysisResults
        @imageColorRangeResults = nil unless instance_variable_defined?(:@imageColorRangeResults)
        @imageColorResults = nil unless instance_variable_defined?(:@imageColorResults)
        @averageAmbientLevel = 0.0 unless instance_variable_defined?(:@averageAmbientLevel)
    end
    

    def initialize()
        jfields_org_allbinary_media_image_analysis_ImageAnalysisResults
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

autoload :ImageColorRangeResults, "org/allbinary/media/image/analysis/ImageColorRangeResults" unless const_defined?(:ImageColorRangeResults, false)
autoload :ImageColorResults, "org/allbinary/media/image/analysis/ImageColorResults" unless const_defined?(:ImageColorResults, false)

end; end; end; end; end

