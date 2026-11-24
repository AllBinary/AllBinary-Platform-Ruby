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

require "java/lang/JavaOverload"
# require "java/awt/Color"
require "org/allbinary/media/image/analysis/ColorRangeInterface"

module ::Org; module Allbinary; module Media; module Image; module Analysis

class ColorRange
    include ColorRangeInterface
    attr_accessor :minRed, :maxRed, :minGreen, :maxGreen, :minBlue, :maxBlue

    def jfields_org_allbinary_media_image_analysis_ColorRange
        @minRed = nil unless instance_variable_defined?(:@minRed)
        @maxRed = nil unless instance_variable_defined?(:@maxRed)
        @minGreen = nil unless instance_variable_defined?(:@minGreen)
        @maxGreen = nil unless instance_variable_defined?(:@maxGreen)
        @minBlue = nil unless instance_variable_defined?(:@minBlue)
        @maxBlue = nil unless instance_variable_defined?(:@maxBlue)
    end
    

    def initialize()
        jfields_org_allbinary_media_image_analysis_ColorRange
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
    java_overload :getMinRed, 0
    

    def setMinRed(minRed)
        @minRed = minRed
    end
    java_overload :setMinRed, 1
    

    def getMaxRed()
        return @maxRed
    end
    java_overload :getMaxRed, 0
    

    def setMaxRed(maxRed)
        @maxRed = maxRed
    end
    java_overload :setMaxRed, 1
    

    def getMinGreen()
        return @minGreen
    end
    java_overload :getMinGreen, 0
    

    def setMinGreen(minGreen)
        @minGreen = minGreen
    end
    java_overload :setMinGreen, 1
    

    def getMaxGreen()
        return @maxGreen
    end
    java_overload :getMaxGreen, 0
    

    def setMaxGreen(maxGreen)
        @maxGreen = maxGreen
    end
    java_overload :setMaxGreen, 1
    

    def getMinBlue()
        return @minBlue
    end
    java_overload :getMinBlue, 0
    

    def setMinBlue(minBlue)
        @minBlue = minBlue
    end
    java_overload :setMinBlue, 1
    

    def getMaxBlue()
        return @maxBlue
    end
    java_overload :getMaxBlue, 0
    

    def setMaxBlue(maxBlue)
        @maxBlue = maxBlue
    end
    java_overload :setMaxBlue, 1
    

    def isInRange(color)
        if color.getRed() >= self.getMinRed() && color.getRed() <= self.getMaxRed() && color.getGreen() >= self.getMinGreen() && color.getGreen() <= self.getMaxGreen() && color.getBlue() >= self.getMinBlue() && color.getBlue() <= self.getMaxBlue()
            return true
        else
            return false
        end
    end
    java_overload :isInRange, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("getMinRed(): ")
        stringBuffer.appendint(self.getMinRed())
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append("getMaxRed(): ")
        stringBuffer.appendint(self.getMaxRed())
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append("getMinGreen(): ")
        stringBuffer.appendint(self.getMinGreen())
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append("getMaxGreen(): ")
        stringBuffer.appendint(self.getMaxGreen())
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append("getMinBlue(): ")
        stringBuffer.appendint(self.getMinGreen())
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append("getMaxBlue(): ")
        stringBuffer.appendint(self.getMaxBlue())
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

end; end; end; end; end

