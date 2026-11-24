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
require "org/allbinary/animation/NullIndexedAnimation"

module ::Org; module Allbinary; module Animation

class NullIndexedAnimationInner < NullIndexedAnimation
    

    def initialize()
        super(IndexedAnimationBehavior.new(1, 250))
    end
    

    def paintXY(graphics, x, y)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
autoload :IndexedAnimationBehavior, "org/allbinary/animation/IndexedAnimationBehavior" unless const_defined?(:IndexedAnimationBehavior, false)

end; end; end

