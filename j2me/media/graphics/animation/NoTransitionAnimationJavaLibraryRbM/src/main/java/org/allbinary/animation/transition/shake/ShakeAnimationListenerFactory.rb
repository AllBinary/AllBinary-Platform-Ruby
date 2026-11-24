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
# package org.allbinary.animation.transition.shake


module ::Org; module Allbinary; module Animation; module Transition; module Shake

class ShakeAnimationListenerFactory
    

    def self.getInstance()
        return NoShakeAnimationListener.new()
    end
end

autoload :NoShakeAnimationListener, "org/allbinary/animation/transition/shake/NoShakeAnimationListener" unless const_defined?(:NoShakeAnimationListener, false)
autoload :ShakeAnimationListener, "org/allbinary/animation/transition/shake/ShakeAnimationListener" unless const_defined?(:ShakeAnimationListener, false)

end; end; end; end; end

