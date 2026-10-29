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

# require "javax/microedition/lcdui/Graphics"
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

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/AnimationBehavior"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/animation/text/TextAnimation"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/animation/caption/CaptionAnimation"

