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

require "java/lang/JavaOverload"
# require "java/awt/Rectangle"
require "java/lang/Cloneable"

module ::Org; module Allbinary; module Media; module Image; module Comparison; module Motion

class MotionRectangle
    include ::Java::Lang::Cloneable
    attr_accessor :rectangle, :pixelDeltaVector

    def jfields_org_allbinary_media_image_comparison_motion_MotionRectangle
        @rectangle = nil unless instance_variable_defined?(:@rectangle)
        @pixelDeltaVector = nil unless instance_variable_defined?(:@pixelDeltaVector)
    end
    

    def initialize(rectangle)
        jfields_org_allbinary_media_image_comparison_motion_MotionRectangle
        self.setRectangle(rectangle)
        self.setPixelDeltaVector(::Org::Allbinary::Util::BasicArrayListD.new())
    end
    

    def getRectangle()
        return @rectangle
    end
    java_overload :getRectangle, 0
    

    def setRectangle(rectangle)
        @rectangle = rectangle
    end
    java_overload :setRectangle, 1
    

    def getPixelDeltaVector()
        return @pixelDeltaVector
    end
    java_overload :getPixelDeltaVector, 0
    

    def setPixelDeltaVector(pixelDeltaVector)
        @pixelDeltaVector = pixelDeltaVector
    end
    java_overload :setPixelDeltaVector, 1
    

    def clone()
        motionRectangle = MotionRectangle.new(self.getRectangle().clone())
        motionRectangle.setPixelDeltaVector(self.getPixelDeltaVector().clone())
        return motionRectangle
    end
    java_overload :clone, 0
end

module ::Java; module Util; autoload :Vector, "java/util/Vector" unless const_defined?(:Vector, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end; end; end

