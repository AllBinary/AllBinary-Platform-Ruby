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

require "java/lang/JavaOverload"
require "org/allbinary/animation/special/SpecialAnimationInterface"
require "org/allbinary/animation/image/ImageArrayAnimation"

module ::Org; module Allbinary; module Animation; module Image

class ImageArraySpecialAnimation < ImageArrayAnimation
    include ::Org::Allbinary::Animation::Special::SpecialAnimationInterface
    attr_accessor :timeDelayHelper, :loopCount, :loopCountTotal

    def jfields_org_allbinary_animation_image_ImageArraySpecialAnimation
        @timeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(270)
        @loopCount = 0
        @loopCountTotal = 1
    end
    

    def initialize(imageArray, animationBehavior)
        super(imageArray, animationBehavior)
        jfields_org_allbinary_animation_image_ImageArraySpecialAnimation
        self.reset()
    end
    

    def getLoopCount()
        return @loopCount
    end
    java_overload :getLoopCount, 0
    

    def setLastFrame()
        @circularIndexUtil.setIndex(@circularIndexUtil.getSize() - 1)
    end
    java_overload :setLastFrame, 0
    

    def reset()
        self.setFrame(self.getSize() - 1)
        @loopCount = 0
    end
    java_overload :reset, 0
    

    def nextFrame()
        if self.getFrame() > 0
            if @timeDelayHelper.isTime(::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance().startTime)
                self.previousFrame()
                if self.getFrame() == 0
                    @loopCount += 1
                end
            end
        end
    end
    java_overload :nextFrame, 0
    

    def isComplete()
        if @loopCount < @loopCountTotal || self.getFrame() != 0
            return false
        else
            return true
        end
    end
    java_overload :isComplete, 0
    

    def paintXY(graphics, x, y)
        x = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance().getLastHalfWidth() - (self.getImage(@circularIndexUtil.getIndex()).getWidth() >> 1)
        y = 5
        ImageArraySpecialAnimation.superclass.java_super_method(:paintXY, 3).bind(self).call(graphics, x, y)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end

end; end; end; end

