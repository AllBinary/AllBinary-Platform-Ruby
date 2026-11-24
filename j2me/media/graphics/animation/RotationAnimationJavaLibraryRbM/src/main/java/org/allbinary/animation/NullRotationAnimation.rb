# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.animation

require "java/lang/JavaOverload"
require "org/allbinary/animation/RotationAnimation"

module ::Org; module Allbinary; module Animation

class NullRotationAnimation < RotationAnimation
    

    def self.createTotalAngle(angleInfo, totalAngle, animationBehavior)
        return NullRotationAnimation.new(angleInfo, ::Org::Allbinary::Util::CircularIndexUtil.createInstance(totalAngle / angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior)
    end
    

    def self.createQuarter(animationBehavior)
        return NullRotationAnimation.new(::Org::Allbinary::MathPackage::AngleInfo.getInstance(::Org::Allbinary::MathPackage::AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), ::Org::Allbinary::Util::CircularIndexUtil.createInstance(4), animationBehavior)
    end
    

    def initialize(angleInfo, circularIndexUtil, animationBehavior)
        super(angleInfo, circularIndexUtil, animationBehavior)
    end
    

    # throws Exception
    def getAnimationSize()
        return 0
    end
    java_overload :getAnimationSize, 0
end

module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleInfo, "org/allbinary/math/AngleInfo" unless const_defined?(:AngleInfo, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false)

end; end; end

