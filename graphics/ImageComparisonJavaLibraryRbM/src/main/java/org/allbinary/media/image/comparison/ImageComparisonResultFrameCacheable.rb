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
# package org.allbinary.media.image.comparison

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/util/cache/CacheableInterface"

module ::Org; module Allbinary; module Media; module Image; module Comparison

class ImageComparisonResultFrameCacheable
    include ::Org::Allbinary::Logic::Util::Cache::CacheableInterface
    attr_accessor :frame, :imageComparisonResult

    def jfields_org_allbinary_media_image_comparison_ImageComparisonResultFrameCacheable
        @frame = nil unless instance_variable_defined?(:@frame)
        @imageComparisonResult = nil unless instance_variable_defined?(:@imageComparisonResult)
    end
    

    def initialize(imageComparisonResult, frame)
        jfields_org_allbinary_media_image_comparison_ImageComparisonResultFrameCacheable
        self.setImageComparisonResult(imageComparisonResult)
        @frame = frame
    end
    

    def getKey()
        return @frame
    end
    java_overload :getKey, 0
    

    def getFrame()
        return @frame
    end
    java_overload :getFrame, 0
    

    def setFrame(frame)
        @frame = frame
    end
    java_overload :setFrame, 1
    

    def getImageComparisonResult()
        return @imageComparisonResult
    end
    java_overload :getImageComparisonResult, 0
    

    def setImageComparisonResult(imageComparisonResult)
        @imageComparisonResult = imageComparisonResult
    end
    java_overload :setImageComparisonResult, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(self.class.java_name)
        stringBuffer.append(" Frame: ")
        stringBuffer.appendlong(self.getFrame())
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
autoload :ImageComparisonResult, "org/allbinary/media/image/comparison/ImageComparisonResult" unless const_defined?(:ImageComparisonResult, false)

end; end; end; end; end

