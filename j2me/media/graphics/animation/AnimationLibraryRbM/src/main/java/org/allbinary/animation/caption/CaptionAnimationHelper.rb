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

require "org/allbinary/animation/caption/CaptionAnimationHelperBase"

class CaptionAnimationHelper < CaptionAnimationHelperBase
    attr_accessor :timeHelper, :textAnimation, :captionAnimation, :animation

    def initialize_fields
        @timeHelper = TimeDelayHelper.new(620)
        @textAnimation = TextAnimation.new(StringUtil.getInstance().EMPTY_STRING, AnimationBehavior.getInstance())
        @captionAnimation = nil
        @animation = NullAnimationFactory.getFactoryInstance().getInstance(0)
    end
    

    def initialize(captionAnimation, captionDx, captionDy, dx, dy)
        super()
        initialize_fields
        @captionAnimation = CaptionAnimation.new(captionAnimation, @textAnimation, captionDx, captionDy, dx, dy)
    end
    

    def isShowing()
        if @animation == @captionAnimation
            return true
        else
            return false
        end
    end
    

    def tick()
        if @timeHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)
            @animation = NullAnimationFactory.getFactoryInstance().getInstance(0)
        end
    end
    

    def update(message, basicColor)
        @textAnimation.setBasicColorP(basicColor)
        @textAnimation.setText(message)
        @animation = @captionAnimation
        @timeHelper.setStartTimeTNT()
    end
    

    def paintXY(graphics, x, y)
        @animation.paintXY(graphics, x, y)
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior"
autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory"
autoload :TextAnimation, "org/allbinary/animation/text/TextAnimation"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory"
autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper"
autoload :CaptionAnimation, "org/allbinary/animation/caption/CaptionAnimation"

