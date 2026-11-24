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
# package org.allbinary.animation.compound

require "java/lang/JavaOverload"
require "org/allbinary/animation/AnimationInterface"

module ::Org; module Allbinary; module Animation; module Compound

module CompoundAnimationInterface
    include ::Org::Allbinary::Animation::AnimationInterface
    

    def nextAnimation()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :nextAnimation, 0
    

    def previousAnimation()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :previousAnimation, 0
    

    def setAnimation(index)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setAnimation, 1
    

    def getCurrentAnimation()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getCurrentAnimation, 0
end

module ::Org; module Allbinary; module Animation; autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation" unless const_defined?(:IndexedAnimation, false); end; end; end

end; end; end; end

