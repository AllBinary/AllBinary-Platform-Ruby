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

class ColorAverage
    attr_accessor :avgRed, :avgGreen, :avgBlue

    def jfields_org_allbinary_media_image_analysis_ColorAverage
        @avgRed = 0.0 unless instance_variable_defined?(:@avgRed)
        @avgGreen = 0.0 unless instance_variable_defined?(:@avgGreen)
        @avgBlue = 0.0 unless instance_variable_defined?(:@avgBlue)
    end
    

    def initialize()
        jfields_org_allbinary_media_image_analysis_ColorAverage
        self.setAvgRed(0)
        self.setAvgGreen(0)
        self.setAvgBlue(0)
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("getAvgRed(): ")
        stringBuffer.appendfloat(self.getAvgRed())
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append("getAvgRed(): ")
        stringBuffer.appendfloat(self.getAvgRed())
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append("getAvgGreen(): ")
        stringBuffer.appendfloat(self.getAvgGreen())
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
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

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

end; end; end; end; end

