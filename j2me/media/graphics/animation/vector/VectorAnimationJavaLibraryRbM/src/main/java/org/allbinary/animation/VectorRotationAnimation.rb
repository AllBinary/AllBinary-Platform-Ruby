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
# package org.allbinary.animation

require "java/lang/JavaOverload"
require "org/allbinary/animation/VectorBaseRotationAnimation"

module ::Org; module Allbinary; module Animation

class VectorRotationAnimation < VectorBaseRotationAnimation
    

    def initialize(currentPoints, basicColor, animationBehavior)
        super(::Org::Allbinary::MathPackage::AngleInfo.getInstance((((((::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE / currentPoints.length)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) + 32768) % 65536 - 32768)), currentPoints, basicColor, animationBehavior)
        @angleInfo.adjustAngle(self.getFrame())
    end
    

    def setFrameByDirection(direction)
        angle = @directionUtil.getFrameAngle(direction)
        self.adjustFrameToAngle(angle)
    end
    java_overload :setFrameByDirection, 1
    

    def setFrameToAngle(angle)
        self.adjustFrameToAngle(angle)
    end
    java_overload :setFrameToAngle, 1
    

    def setFrame(index)
        VectorRotationAnimation.superclass.java_super_method(:setFrame, 1).bind(self).call(index)
        @angleInfo.adjustAngle(self.getFrame())
    end
    java_overload :setFrame, 1
    

    def adjustFrame(newAngle)
        self.setFrame(@frameUtil.getFrameForAngle(newAngle, ((@angleInfo.getAngleIncrementInfo().getAngleIncrement()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })))
    end
    java_overload :adjustFrame, 1
    

    def adjustFrameToAngle(newAngle)
        self.adjustFrame(newAngle.getValue())
    end
    java_overload :adjustFrameToAngle, 1
end

module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :Angle, "org/allbinary/math/Angle" unless const_defined?(:Angle, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false)

end; end; end

