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

class ImageColorResults
    attr_accessor :colorRange, :colorAverage

    def jfields_org_allbinary_media_image_analysis_ImageColorResults
        @colorRange = nil unless instance_variable_defined?(:@colorRange)
        @colorAverage = nil unless instance_variable_defined?(:@colorAverage)
    end
    

    def initialize()
        jfields_org_allbinary_media_image_analysis_ImageColorResults
        self.setColorRange(ColorRange.new())
        self.getColorRange().setMaxRed(-1)
        self.getColorRange().setMaxGreen(-1)
        self.getColorRange().setMaxBlue(-1)
        self.getColorRange().setMinRed(256)
        self.getColorRange().setMinGreen(256)
        self.getColorRange().setMinBlue(256)
        self.setColorAverage(ColorAverage.new())
    end
    

    def getColorRange()
        return @colorRange
    end
    

    def setColorRange(colorRange)
        @colorRange = colorRange
    end
    

    def getColorAverage()
        return @colorAverage
    end
    

    def setColorAverage(colorAverage)
        @colorAverage = colorAverage
    end
end

autoload :ColorAverage, "org/allbinary/media/image/analysis/ColorAverage" unless const_defined?(:ColorAverage, false)
autoload :ColorRange, "org/allbinary/media/image/analysis/ColorRange" unless const_defined?(:ColorRange, false)

end; end; end; end; end

