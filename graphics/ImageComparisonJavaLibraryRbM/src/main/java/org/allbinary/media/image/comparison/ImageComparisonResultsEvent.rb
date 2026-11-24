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
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Media; module Image; module Comparison

class ImageComparisonResultsEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :imageComparisonResult

    def jfields_org_allbinary_media_image_comparison_ImageComparisonResultsEvent
        @imageComparisonResult = nil unless instance_variable_defined?(:@imageComparisonResult)
    end
    

    def initialize(anyType, imageComparisonInfo)
        super(anyType)
        jfields_org_allbinary_media_image_comparison_ImageComparisonResultsEvent
        self.setImageComparisonResult(imageComparisonInfo)
    end
    

    def getImageComparisonResult()
        return @imageComparisonResult
    end
    java_overload :getImageComparisonResult, 0
    

    def setImageComparisonResult(imageComparisonResult)
        @imageComparisonResult = imageComparisonResult
    end
    java_overload :setImageComparisonResult, 1
end

autoload :ImageComparisonResult, "org/allbinary/media/image/comparison/ImageComparisonResult" unless const_defined?(:ImageComparisonResult, false)

end; end; end; end; end

