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
# package org.allbinary.media.image.cache


module ::Org; module Allbinary; module Media; module Image; module Cache

class BufferedImageInfo
    attr_accessor :width, :height, :type

    def jfields_org_allbinary_media_image_cache_BufferedImageInfo
        @width = nil unless instance_variable_defined?(:@width)
        @height = nil unless instance_variable_defined?(:@height)
        @type = nil unless instance_variable_defined?(:@type)
    end
    

    def initialize(width, height, type)
        jfields_org_allbinary_media_image_cache_BufferedImageInfo
        @width = width
        @height = height
        @type = type
    end
    

    def getWidth()
        return @width
    end
    

    def setWidth(width)
        @width = width
    end
    

    def getHeight()
        return @height
    end
    

    def setHeight(height)
        @height = height
    end
    

    def getType()
        return @type
    end
    

    def setType(type)
        @type = type
    end
    

    def toString()
        commonLabels = ::Org::Allbinary::StringPackage::CommonLabels.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("BufferedImageInfo -")
        stringBuffer.append(commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(self.getWidth())
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(self.getHeight())
        stringBuffer.append(" Type: ")
        stringBuffer.appendint(self.getType())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end

end; end; end; end; end

