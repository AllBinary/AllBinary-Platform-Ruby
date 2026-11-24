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
# package org.allbinary.animation.transition

require "java/lang/JavaOverload"
require "org/allbinary/animation/transition/AnimationListenerInterface"

module ::Org; module Allbinary; module Animation; module Transition

class RunAtEndAnimationListener
    include AnimationListenerInterface
    attr_accessor :runnable

    def jfields_org_allbinary_animation_transition_RunAtEndAnimationListener
        @runnable = nil unless instance_variable_defined?(:@runnable)
    end
    

    def initialize(runnable)
        jfields_org_allbinary_animation_transition_RunAtEndAnimationListener
        @runnable = runnable
    end
    

    def onPlatformAnimationStart()
    end
    java_overload :onPlatformAnimationStart, 0
    

    def onPlatformAnimationEnd()
    end
    java_overload :onPlatformAnimationEnd, 0
    

    def onPlatformAnimationRepeat()
    end
    java_overload :onPlatformAnimationRepeat, 0
end

require "java/lang/Runnable"

end; end; end; end

