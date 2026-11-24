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

class ImageColorRangeResults
    attr_accessor :colorRangeInterface, :matchingPixelsChecked, :totalPixelsChecked

    def jfields_org_allbinary_media_image_analysis_ImageColorRangeResults
        @colorRangeInterface = nil unless instance_variable_defined?(:@colorRangeInterface)
        @matchingPixelsChecked = 0 unless instance_variable_defined?(:@matchingPixelsChecked)
        @totalPixelsChecked = 0 unless instance_variable_defined?(:@totalPixelsChecked)
    end
    

    def initialize()
        jfields_org_allbinary_media_image_analysis_ImageColorRangeResults
        self.setColorRangeInterface(ColorRange.new())
    end
    

    def getColorRangeInterface()
        return @colorRangeInterface
    end
    

    def setColorRangeInterface(colorRangeInterface)
        @colorRangeInterface = colorRangeInterface
    end
    

    def getMatchingPixelsChecked()
        return @matchingPixelsChecked
    end
    

    def setMatchingPixelsChecked(matchingPixelsChecked)
        @matchingPixelsChecked = matchingPixelsChecked
    end
    

    def addMatchingPixelsChecked()
        @matchingPixelsChecked += 1
    end
    

    def getTotalPixelsChecked()
        return @totalPixelsChecked
    end
    

    def addTotalPixelsChecked()
        @totalPixelsChecked += 1
    end
    

    def setTotalPixelsChecked(totalPixelsChecked)
        @totalPixelsChecked = totalPixelsChecked
    end
    

    def getPercent()
        return ((self.getMatchingPixelsChecked()).to_f / (self.getTotalPixelsChecked()).to_f)
    end
end

autoload :ColorRange, "org/allbinary/media/image/analysis/ColorRange" unless const_defined?(:ColorRange, false)
autoload :ColorRangeInterface, "org/allbinary/media/image/analysis/ColorRangeInterface" unless const_defined?(:ColorRangeInterface, false)

end; end; end; end; end

