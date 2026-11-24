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
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/IndexedAnimationInterface"

module ::Org; module Allbinary; module Animation

class IndexedAnimation < Animation
    include IndexedAnimationInterface
    attr_accessor :logUtil, :commonStrings, :animationBehaviorP

    def jfields_org_allbinary_animation_IndexedAnimation
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @animationBehaviorP = nil unless instance_variable_defined?(:@animationBehaviorP)
    end
    

    def initialize(animationBehavior)
        super()
        jfields_org_allbinary_animation_IndexedAnimation
        @animationBehaviorP = animationBehavior
    end
    

    def getAnimationBehavior()
        return @animationBehaviorP
    end
    java_overload :getAnimationBehavior, 0
    

    def reset()
        @animationBehaviorP.reset()
        self.setFrame(0)
    end
    java_overload :reset, 0
    

    def setFrame(index)
    end
    java_overload :setFrame, 1
    

    def getFrame()
        return 0
    end
    java_overload :getFrame, 0
    

    # throws Exception
    def getAnimationSize()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :getAnimationSize, 0
    

    def getSize()
        return 0
    end
    java_overload :getSize, 0
    

    def previousFrame()
    end
    java_overload :previousFrame, 0
    

    def isLastFrame()
        if self.getFrame() == self.getSize() - 1
            return true
        else
            return false
        end
    end
    java_overload :isLastFrame, 0
    

    def setSequence(sequence)
    end
    java_overload :setSequence, 1
    

    def getSequence()
        return ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance()
    end
    java_overload :getSequence, 0
    

    def setState(indexedAnimation)
        self.setFrame(indexedAnimation.getFrame())
        self.setDx(indexedAnimation.getDx())
        self.setDy(indexedAnimation.getDy())
    end
    java_overload :setState, 1
    

    def getWidth()
        return 0
    end
    java_overload :getWidth, 0
    

    def getHeight()
        return 0
    end
    java_overload :getHeight, 0
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false)

end; end; end

