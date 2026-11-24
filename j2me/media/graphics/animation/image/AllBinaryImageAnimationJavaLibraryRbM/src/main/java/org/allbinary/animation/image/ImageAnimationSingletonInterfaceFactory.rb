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
require "org/allbinary/animation/SingletonAnimationInterfaceFactory"

module ::Org; module Allbinary; module Animation; module Image

class ImageAnimationSingletonInterfaceFactory < ::Org::Allbinary::Animation::SingletonAnimationInterfaceFactory
    

    def initialize(animationInterface, width, height)
        super(ImageAnimation.new(::Org::Allbinary::Image::AnimationFrameToImageUtil.getInstance().getInstanceWH(width, height, animationInterface), ::Org::Allbinary::Animation::AnimationBehavior.getInstance()))
    end
end

module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :AnimationFrameToImageUtil, "org/allbinary/image/AnimationFrameToImageUtil" unless const_defined?(:AnimationFrameToImageUtil, false); end; end; end
autoload :ImageAnimation, "org/allbinary/animation/image/ImageAnimation" unless const_defined?(:ImageAnimation, false)

end; end; end; end

