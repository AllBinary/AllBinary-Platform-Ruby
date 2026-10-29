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
require "org/allbinary/media/image/analysis/ColorRangeInterface"

class ColorRange
    include ColorRangeInterface
    attr_accessor :minRed, :maxRed, :minGreen, :maxGreen, :minBlue, :maxBlue

    def initialize_fields
        @minRed = nil
        @maxRed = nil
        @minGreen = nil
        @maxGreen = nil
        @minBlue = nil
        @maxBlue = nil
    end
    

    def initialize()
        initialize_fields
        @minRed = 0
        @maxRed = 0
        @minGreen = 0
        @maxGreen = 0
        @minBlue = 0
        @maxBlue = 0
    end
    

    def getMinRed()
        return @minRed
    end
    

    def setMinRed(minRed)
        @minRed = minRed
    end
    

    def getMaxRed()
        return @maxRed
    end
    

    def setMaxRed(maxRed)
        @maxRed = maxRed
    end
    

    def getMinGreen()
        return @minGreen
    end
    

    def setMinGreen(minGreen)
        @minGreen = minGreen
    end
    

    def getMaxGreen()
        return @maxGreen
    end
    

    def setMaxGreen(maxGreen)
        @maxGreen = maxGreen
    end
    

    def getMinBlue()
        return @minBlue
    end
    

    def setMinBlue(minBlue)
        @minBlue = minBlue
    end
    

    def getMaxBlue()
        return @maxBlue
    end
    

    def setMaxBlue(maxBlue)
        @maxBlue = maxBlue
    end
    

    def isInRange(color)
        if color.getRed() >= self.getMinRed() && color.getRed() <= self.getMaxRed() && color.getGreen() >= self.getMinGreen() && color.getGreen() <= self.getMaxGreen() && color.getBlue() >= self.getMinBlue() && color.getBlue() <= self.getMaxBlue()
            return true
        else
            return false
        end
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("getMinRed(): ")
        stringBuffer.appendint(self.getMinRed())
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append("getMaxRed(): ")
        stringBuffer.appendint(self.getMaxRed())
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append("getMinGreen(): ")
        stringBuffer.appendint(self.getMinGreen())
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append("getMaxGreen(): ")
        stringBuffer.appendint(self.getMaxGreen())
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append("getMinBlue(): ")
        stringBuffer.appendint(self.getMinGreen())
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append("getMaxBlue(): ")
        stringBuffer.appendint(self.getMaxBlue())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"

