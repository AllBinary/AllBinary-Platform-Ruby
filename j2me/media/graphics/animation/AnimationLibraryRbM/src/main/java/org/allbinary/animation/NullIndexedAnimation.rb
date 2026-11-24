# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.animation

require "java/lang/JavaOverload"
require "org/allbinary/animation/IndexedAnimation"

module ::Org; module Allbinary; module Animation

class NullIndexedAnimation < IndexedAnimation
    

    def initialize(animationBehavior)
        super(animationBehavior)
    end
    

    # throws Exception
    def getAnimationSize()
        return 0
    end
    java_overload :getAnimationSize, 0
end

autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false)

end; end; end

