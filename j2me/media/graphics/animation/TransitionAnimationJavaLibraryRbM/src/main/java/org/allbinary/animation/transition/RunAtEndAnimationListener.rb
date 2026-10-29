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

require "org/allbinary/animation/transition/AnimationListenerInterface"

class RunAtEndAnimationListener
    include AnimationListenerInterface
    attr_accessor :runnable

    def initialize_fields
        @runnable = nil
    end
    

    def initialize(runnable)
        initialize_fields
        @runnable = runnable
    end
    

    def onPlatformAnimationStart()
    end
    

    def onPlatformAnimationEnd()
    end
    

    def onPlatformAnimationRepeat()
    end
end

require "java/lang/Runnable"

