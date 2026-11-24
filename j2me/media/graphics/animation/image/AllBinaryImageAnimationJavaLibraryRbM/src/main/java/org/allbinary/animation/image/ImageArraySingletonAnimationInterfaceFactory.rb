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

class ImageArraySingletonAnimationInterfaceFactory < ::Org::Allbinary::Animation::SingletonAnimationInterfaceFactory
    

    def initialize(imageArray)
        super(ImageArrayAnimation.new(imageArray, ::Org::Allbinary::Animation::AnimationBehavior.getInstance()))
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation" unless const_defined?(:IndexedAnimation, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :IndexedAnimationToImageArrayUtil, "org/allbinary/image/IndexedAnimationToImageArrayUtil" unless const_defined?(:IndexedAnimationToImageArrayUtil, false); end; end; end
autoload :ImageArrayAnimation, "org/allbinary/animation/image/ImageArrayAnimation" unless const_defined?(:ImageArrayAnimation, false)

end; end; end; end

