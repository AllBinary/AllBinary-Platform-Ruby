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
require "org/allbinary/animation/RotationAnimation"

module ::Org; module Allbinary; module Animation; module Image

class ImageBaseRotationAnimation < ::Org::Allbinary::Animation::RotationAnimation
    attr_accessor :image, :anchor

    def jfields_org_allbinary_animation_image_ImageBaseRotationAnimation
        @image = nil unless instance_variable_defined?(:@image)
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
    end
    

    def initialize(image, angleInfo, totalAngle, animationBehavior)
        super(angleInfo, ::Org::Allbinary::Util::CircularIndexUtil.createInstance(totalAngle / angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior)
        jfields_org_allbinary_animation_image_ImageBaseRotationAnimation
        @image = image
    end
    

    # throws Exception
    def getAnimationSize()
        return self.getSize()
    end
    java_overload :getAnimationSize, 0
    

    def setSequence(sequence)
    end
    java_overload :setSequence, 1
    

    def getSequence()
        return ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance()
    end
    java_overload :getSequence, 0
    

    def paintXY(graphics, x, y)
        graphics.drawImage(@image, x, y, @anchor)
    end
    java_overload :paintXY, 3
    

    def getImage()
        return @image
    end
    java_overload :getImage, 0
    

    def getWidth()
        return @image.getWidth()
    end
    java_overload :getWidth, 0
    

    def getHeight()
        return @image.getHeight()
    end
    java_overload :getHeight, 0
    

    # throws Exception
    def close()
        ::Org::Allbinary::DisposalUtil.getInstance().disposeImage(@image)
    end
    java_overload :close, 0
    

    # throws Throwable
    def finalize()
        ::Org::Allbinary::DisposalUtil.getInstance().disposeImage(@image)
    end
    java_overload :finalize, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; autoload :DisposalUtil, "org/allbinary/DisposalUtil" unless const_defined?(:DisposalUtil, false); end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Anchor, "org/allbinary/graphics/Anchor" unless const_defined?(:Anchor, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end

end; end; end; end

