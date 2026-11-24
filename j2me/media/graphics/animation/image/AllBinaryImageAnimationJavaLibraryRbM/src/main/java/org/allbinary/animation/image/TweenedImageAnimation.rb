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
require "org/allbinary/animation/IndexedAnimation"

module ::Org; module Allbinary; module Animation; module Image

class TweenedImageAnimation < ::Org::Allbinary::Animation::IndexedAnimation
    attr_accessor :image, :dx, :dy, :totalFrames, :circularIndexUtil, :anchor

    def jfields_org_allbinary_animation_image_TweenedImageAnimation
        @image = nil unless instance_variable_defined?(:@image)
        @dx = nil unless instance_variable_defined?(:@dx)
        @dy = nil unless instance_variable_defined?(:@dy)
        @totalFrames = nil unless instance_variable_defined?(:@totalFrames)
        @circularIndexUtil = nil unless instance_variable_defined?(:@circularIndexUtil)
        @anchor = ::Org::Allbinary::Graphics::Anchor::TOP_LEFT
    end
    

    def initialize(image, dx, dy, totalFrames, animationBehavior)
        super(animationBehavior)
        jfields_org_allbinary_animation_image_TweenedImageAnimation
        @image = image
        @dx = dx
        @dy = dy
        @totalFrames = totalFrames
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstance(@totalFrames)
    end
    

    # throws Exception
    def getAnimationSize()
        return self.getSize()
    end
    java_overload :getAnimationSize, 0
    

    def nextFrame()
        @circularIndexUtil.next_()
    end
    java_overload :nextFrame, 0
    

    def previousFrame()
        @circularIndexUtil.previous()
    end
    java_overload :previousFrame, 0
    

    def setFrame(index)
        @circularIndexUtil.setIndex(index)
    end
    java_overload :setFrame, 1
    

    def getFrame()
        return @circularIndexUtil.getIndex()
    end
    java_overload :getFrame, 0
    

    def getSize()
        return @totalFrames
    end
    java_overload :getSize, 0
    

    def setSequence(sequence)
    end
    java_overload :setSequence, 1
    

    def getSequence()
        return ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance()
    end
    java_overload :getSequence, 0
    

    def paintXY(graphics, x, y)
        frame = self.getFrame()
        currentX = @dx * frame
        currentY = @dy * frame
        graphics.drawImage(@image, x + currentX, y + currentY, @anchor)
    end
    java_overload :paintXY, 3
    

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
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end

end; end; end; end

