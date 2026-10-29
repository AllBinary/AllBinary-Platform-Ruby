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


class ImageColorResults
    attr_accessor :colorRange, :colorAverage

    def initialize_fields
        @colorRange = nil
        @colorAverage = nil
    end
    

    def initialize()
        initialize_fields
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

require "org/allbinary/media/image/analysis/ColorAverage"
require "org/allbinary/media/image/analysis/ColorRange"

