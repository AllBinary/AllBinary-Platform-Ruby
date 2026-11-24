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
# package org.allbinary.animation.image.sprite

require "java/lang/JavaOverload"
require "org/allbinary/animation/image/sprite/HackRotationSpriteIndexedAnimation"

module ::Org; module Allbinary; module Animation; module Image; module Sprite

class AllBinarySpriteRotationAnimation < HackRotationSpriteIndexedAnimation
    

    def initialize(sprite, image, animationBehavior)
        super(sprite, image, ::Org::Allbinary::MathPackage::AngleInfo.getInstance((((((::Org::Allbinary::MathPackage::AngleFactory.getInstance().TOTAL_ANGLE / sprite.getRawFrameCount())).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }) + 32768) % 65536 - 32768)), animationBehavior)
        @angleInfo.adjustAngle(@sprite.getFrame())
    end
    

    def nextRotation()
        @sprite.nextFrame()
        @angleInfo.adjustAngle(@sprite.getFrame())
    end
    java_overload :nextRotation, 0
    

    def previousRotation()
        @sprite.prevFrame()
        @angleInfo.adjustAngle(@sprite.getFrame())
    end
    java_overload :previousRotation, 0
    

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
        @sprite.setFrame(index)
        @angleInfo.adjustAngle(self.getFrame())
    end
    java_overload :setFrame, 1
    

    def adjustFrameToAngle(angle)
        self.adjustFrame(angle.getValue())
    end
    java_overload :adjustFrameToAngle, 1
    

    def adjustFrame(angle)
        self.setFrame(@frameUtil.getFrameForAngle(angle, ((@angleInfo.getAngleIncrementInfo().getAngleIncrement()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })))
    end
    java_overload :adjustFrame, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; module Game; autoload :Sprite, "javax/microedition/lcdui/game/Sprite" unless const_defined?(:Sprite, false); end; end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Direction; autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :Angle, "org/allbinary/math/Angle" unless const_defined?(:Angle, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end

end; end; end; end; end

