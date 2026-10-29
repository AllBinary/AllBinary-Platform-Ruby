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


class ImageColorRangeResults
    attr_accessor :colorRangeInterface, :matchingPixelsChecked, :totalPixelsChecked

    def initialize_fields
        @colorRangeInterface = nil
        @matchingPixelsChecked = 0
        @totalPixelsChecked = 0
    end
    

    def initialize()
        initialize_fields
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

require "org/allbinary/media/image/analysis/ColorRange"
require "org/allbinary/media/image/analysis/ColorRangeInterface"

