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
# package org.allbinary.animation.caption

require "java/lang/JavaOverload"
require "org/allbinary/animation/caption/CaptionAnimationHelperBase"

module ::Org; module Allbinary; module Animation; module Caption

class CaptionAnimationHelper < CaptionAnimationHelperBase
    attr_accessor :timeHelper, :textAnimation, :captionAnimation, :animation

    def jfields_org_allbinary_animation_caption_CaptionAnimationHelper
        @timeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(620)
        @textAnimation = ::Org::Allbinary::Animation::Text::TextAnimation.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Animation::AnimationBehavior.getInstance())
        @captionAnimation = nil unless instance_variable_defined?(:@captionAnimation)
        @animation = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
    end
    

    def initialize(captionAnimation, captionDx, captionDy, dx, dy)
        super()
        jfields_org_allbinary_animation_caption_CaptionAnimationHelper
        @captionAnimation = CaptionAnimation.new(captionAnimation, @textAnimation, captionDx, captionDy, dx, dy)
    end
    

    def isShowing()
        if @animation == @captionAnimation
            return true
        else
            return false
        end
    end
    java_overload :isShowing, 0
    

    def tick()
        if @timeHelper.isTime(::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance().startTime)
            @animation = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
        end
    end
    java_overload :tick, 0
    

    def update(message, basicColor)
        @textAnimation.setBasicColorP(basicColor)
        @textAnimation.setText(message)
        @animation = @captionAnimation
        @timeHelper.setStartTimeTNT()
    end
    java_overload :update, 2
    

    def paintXY(graphics, x, y)
        @animation.paintXY(graphics, x, y)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Animation; module Text; autoload :TextAnimation, "org/allbinary/animation/text/TextAnimation" unless const_defined?(:TextAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
autoload :CaptionAnimation, "org/allbinary/animation/caption/CaptionAnimation" unless const_defined?(:CaptionAnimation, false)

end; end; end; end

