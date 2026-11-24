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
require "org/allbinary/animation/IndexedAnimation"

module ::Org; module Allbinary; module Animation; module Caption

class CaptionIndexedAnimation < ::Org::Allbinary::Animation::IndexedAnimation
    attr_accessor :animationInterface, :movieIndexedAnimationInterface, :captionDx, :captionDy, :dx, :dy, :time, :END_EVENT, :timeDelayHelper, :player

    def jfields_org_allbinary_animation_caption_CaptionIndexedAnimation
        @animationInterface = nil unless instance_variable_defined?(:@animationInterface)
        @movieIndexedAnimationInterface = nil unless instance_variable_defined?(:@movieIndexedAnimationInterface)
        @captionDx = nil unless instance_variable_defined?(:@captionDx)
        @captionDy = nil unless instance_variable_defined?(:@captionDy)
        @dx = nil unless instance_variable_defined?(:@dx)
        @dy = nil unless instance_variable_defined?(:@dy)
        @time = nil unless instance_variable_defined?(:@time)
        @END_EVENT = nil unless instance_variable_defined?(:@END_EVENT)
        @timeDelayHelper = nil unless instance_variable_defined?(:@timeDelayHelper)
        @player = nil unless instance_variable_defined?(:@player)
    end
    

    def initialize(animationInterface, movieIndexedAnimationInterface, player, captionDx, captionDy, dx, dy, time, animationBehavior)
        super(animationBehavior)
        jfields_org_allbinary_animation_caption_CaptionIndexedAnimation
        @animationInterface = animationInterface
        @movieIndexedAnimationInterface = movieIndexedAnimationInterface
        @captionDx = captionDx
        @captionDy = captionDy
        @dx = dx
        @dy = dy
        @time = time
        @END_EVENT = ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject.new(self)
        timePerFrame = @time / self.getSize()
        @timeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(timePerFrame)
        @player = player
        @player.start()
    end
    

    # throws Exception
    def nextFrame()
        if @timeDelayHelper.isTime(::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance().startTime)
            @movieIndexedAnimationInterface.nextFrame()
        end
        if self.isLastFrame()
            ::Org::Allbinary::Animation::AnimationEventHandler.getInstance().fireEvent(@END_EVENT)
        end
    end
    java_overload :nextFrame, 0
    

    def isLastFrame()
        if @movieIndexedAnimationInterface.getFrame() == self.getSize() - 1
            return true
        else
            return false
        end
    end
    java_overload :isLastFrame, 0
    

    def previousFrame()
        @movieIndexedAnimationInterface.previousFrame()
    end
    java_overload :previousFrame, 0
    

    def setFrame(index)
        @movieIndexedAnimationInterface.setFrame(index)
    end
    java_overload :setFrame, 1
    

    def getFrame()
        return @movieIndexedAnimationInterface.getFrame()
    end
    java_overload :getFrame, 0
    

    def getSize()
        return @movieIndexedAnimationInterface.getSize()
    end
    java_overload :getSize, 0
    

    def setSequence(sequence)
    end
    java_overload :setSequence, 1
    

    def getSequence()
        return ::Org::Allbinary::Logic::MathPackage::PrimitiveIntUtil.getArrayInstance()
    end
    java_overload :getSequence, 0
    

    def paintXY(graphics, x, y)
        @animationInterface.paintXY(graphics, x + @captionDx, y + @captionDy)
        @movieIndexedAnimationInterface.paintXY(graphics, x + @captionDx + @dx, y + @captionDy + @dy)
    end
    java_overload :paintXY, 3
    

    def paintThreedXYZ(graphics, x, y, z)
        @animationInterface.paintThreedXYZ(graphics, x + @captionDx, y + @captionDy, z)
        @movieIndexedAnimationInterface.paintThreedXYZ(graphics, x + @captionDx + @dx, y + @captionDy + @dy, z)
    end
    java_overload :paintThreedXYZ, 4
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Media; autoload :Player, "javax/microedition/media/Player" unless const_defined?(:Player, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationBehavior, "org/allbinary/animation/AnimationBehavior" unless const_defined?(:AnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :AnimationEventHandler, "org/allbinary/animation/AnimationEventHandler" unless const_defined?(:AnimationEventHandler, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveIntUtil, "org/allbinary/logic/math/PrimitiveIntUtil" unless const_defined?(:PrimitiveIntUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end

end; end; end; end

