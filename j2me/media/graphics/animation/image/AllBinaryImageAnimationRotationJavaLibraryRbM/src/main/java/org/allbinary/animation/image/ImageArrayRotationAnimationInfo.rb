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

# require "javax/microedition/lcdui/Image"

class ImageArrayRotationAnimationInfo
    attr_accessor :imageArray, :angleIncrement, :totalAngle, :dx, :dy

    def initialize_fields
        @imageArray = nil
        @angleIncrement = nil
        @totalAngle = nil
        @dx = nil
        @dy = nil
    end
    

    def initialize(imageArray, angleIncrement, totalAngle, dx, dy)
        initialize_fields
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
        return AngleInfo.getInstance((((@angleIncrement).to_i + 32768) % 65536 - 32768))
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

require "org/allbinary/math/AngleInfo"

