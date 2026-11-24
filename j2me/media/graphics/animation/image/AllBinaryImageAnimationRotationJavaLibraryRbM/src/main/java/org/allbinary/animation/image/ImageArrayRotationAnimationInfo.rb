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
# package org.allbinary.animation.image


module ::Org; module Allbinary; module Animation; module Image

class ImageArrayRotationAnimationInfo
    attr_accessor :imageArray, :angleIncrement, :totalAngle, :dx, :dy

    def jfields_org_allbinary_animation_image_ImageArrayRotationAnimationInfo
        @imageArray = nil unless instance_variable_defined?(:@imageArray)
        @angleIncrement = nil unless instance_variable_defined?(:@angleIncrement)
        @totalAngle = nil unless instance_variable_defined?(:@totalAngle)
        @dx = nil unless instance_variable_defined?(:@dx)
        @dy = nil unless instance_variable_defined?(:@dy)
    end
    

    def initialize(imageArray, angleIncrement, totalAngle, dx, dy)
        jfields_org_allbinary_animation_image_ImageArrayRotationAnimationInfo
        @imageArray = imageArray
        @angleIncrement = angleIncrement
        @totalAngle = totalAngle
        @dx = dx
        @dy = dy
    end
    

    def setImageArray(imageArray)
        @imageArray = imageArray
    end
    

    def getImageArray()
        return @imageArray
    end
    

    def getAngleInfoP()
        return ::Org::Allbinary::MathPackage::AngleInfo.getInstance((((@angleIncrement).to_i + 32768) % 65536 - 32768))
    end
    

    def setTotalAngle(totalAngle)
        @totalAngle = totalAngle
    end
    

    def getTotalAngle()
        return @totalAngle
    end
    

    def setDx(dx)
        @dx = dx
    end
    

    def getDx()
        return @dx
    end
    

    def setDy(dy)
        @dy = dy
    end
    

    def getDy()
        return @dy
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end

end; end; end; end

