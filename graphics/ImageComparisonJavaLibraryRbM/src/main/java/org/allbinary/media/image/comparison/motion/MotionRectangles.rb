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
# package org.allbinary.media.image.comparison.motion


module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion

class MotionRectangles
    attr_accessor :name, :rectangleVector, :imageComparisonResult, :MAX_PIXEL_DISTANCE_THRESHOLD

    def jfields_org_allbinary_media_image_comparison_motion_MotionRectangles
        @name = nil unless instance_variable_defined?(:@name)
        @rectangleVector = nil unless instance_variable_defined?(:@rectangleVector)
        @imageComparisonResult = nil unless instance_variable_defined?(:@imageComparisonResult)
        @MAX_PIXEL_DISTANCE_THRESHOLD = 2
    end
    

    def initialize(name, imageComparisonResult)
        jfields_org_allbinary_media_image_comparison_motion_MotionRectangles
        @name = name
        self.setImageComparisonResult(imageComparisonResult)
        self.setVector(::Org::Allbinary::Util::BasicArrayListD.new())
    end
    

    def getVector()
        return @rectangleVector
    end
    

    def setVector(rectangleVector)
        @rectangleVector = rectangleVector
    end
    

    def getName()
        return @name
    end
    

    def getImageComparisonResult()
        return @imageComparisonResult
    end
    

    def setImageComparisonResult(imageComparisonResult)
        @imageComparisonResult = imageComparisonResult
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; autoload :ImageComparisonResult, "org/allbinary/media/image/comparison/ImageComparisonResult" unless const_defined?(:ImageComparisonResult, false); end; end; end; end; end

end; end; end; end; end; end

