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


class ColorAverage
    attr_accessor :avgRed, :avgGreen, :avgBlue

    def initialize_fields
        @avgRed = 0.0
        @avgGreen = 0.0
        @avgBlue = 0.0
    end
    

    def initialize()
        initialize_fields
        self.setAvgRed(0)
        self.setAvgGreen(0)
        self.setAvgBlue(0)
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("getAvgRed(): ")
        stringBuffer.appendfloat(self.getAvgRed())
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append("getAvgRed(): ")
        stringBuffer.appendfloat(self.getAvgRed())
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append("getAvgGreen(): ")
        stringBuffer.appendfloat(self.getAvgGreen())
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
    

    def getAvgRed()
        return @avgRed
    end
    

    def setAvgRed(avgRed)
        @avgRed = avgRed
    end
    

    def getAvgGreen()
        return @avgGreen
    end
    

    def setAvgGreen(avgGreen)
        @avgGreen = avgGreen
    end
    

    def getAvgBlue()
        return @avgBlue
    end
    

    def setAvgBlue(avgBlue)
        @avgBlue = avgBlue
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"

