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
require "org/allbinary/animation/Animation"

module ::Org; module Allbinary; module Animation; module Caption

class CaptionAnimation < ::Org::Allbinary::Animation::Animation
    attr_accessor :animationInterface, :overlayAnimationInterface, :captionDx, :captionDy, :dx, :dy

    def jfields_org_allbinary_animation_caption_CaptionAnimation
        @animationInterface = nil unless instance_variable_defined?(:@animationInterface)
        @overlayAnimationInterface = nil unless instance_variable_defined?(:@overlayAnimationInterface)
        @captionDx = nil unless instance_variable_defined?(:@captionDx)
        @captionDy = nil unless instance_variable_defined?(:@captionDy)
        @dx = nil unless instance_variable_defined?(:@dx)
        @dy = nil unless instance_variable_defined?(:@dy)
    end
    

    def initialize(animationInterface, overlayAnimationInterface, captionDx, captionDy, dx, dy)
        super()
        jfields_org_allbinary_animation_caption_CaptionAnimation
        @animationInterface = animationInterface
        @overlayAnimationInterface = overlayAnimationInterface
        @captionDx = captionDx
        @captionDy = captionDy
        @dx = dx
        @dy = dy
    end
    

    # throws Exception
    def nextFrame()
    end
    java_overload :nextFrame, 0
    

    def paintXY(graphics, x, y)
        @animationInterface.paintXY(graphics, x + @captionDx, y + @captionDy)
        @overlayAnimationInterface.paintXY(graphics, x + @captionDx + @dx, y + @captionDy + @dy)
    end
    java_overload :paintXY, 3
    

    def paintThreedXYZ(graphics, x, y, z)
        @animationInterface.paintThreedXYZ(graphics, x + @captionDx, y + @captionDy, z)
        @overlayAnimationInterface.paintThreedXYZ(graphics, x + @captionDx + @dx, y + @captionDy + @dy, z)
    end
    java_overload :paintThreedXYZ, 4
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end

end; end; end; end

