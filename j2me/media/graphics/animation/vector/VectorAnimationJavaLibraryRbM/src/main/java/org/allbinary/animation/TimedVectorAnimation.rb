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
require "org/allbinary/animation/VectorAnimation"

module ::Org; module Allbinary; module Animation

class TimedVectorAnimation < VectorAnimation
    attr_accessor :timeElapsedHelper

    def jfields_org_allbinary_animation_TimedVectorAnimation
        @timeElapsedHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(200)
    end
    

    def initialize(currentPoints, basicColor, animationBehavior)
        super(currentPoints, basicColor, animationBehavior)
        jfields_org_allbinary_animation_TimedVectorAnimation
    end
    

    def nextFrame()
        if @timeElapsedHelper.isTime(::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance().startTime)
            TimedVectorAnimation.superclass.java_super_method(:nextFrame, 0).bind(self).call()
        end
    end
    java_overload :nextFrame, 0
end

module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false)

end; end; end

