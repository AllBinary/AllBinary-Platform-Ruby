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
# package org.allbinary.game.physics.velocity

require "java/lang/JavaOverload"
require "org/allbinary/game/physics/velocity/BasicVelocityInterface"

module ::Org; module Allbinary; module Game; module Physics; module Velocity

module VelocityInterface
    include BasicVelocityInterface
    

    def getMaxForwardVelocity()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getMaxForwardVelocity, 0
    

    def getMaxReverseVelocity()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getMaxReverseVelocity, 0
    

    def limitMaxXYForwardVelocity()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :limitMaxXYForwardVelocity, 0
    

    def limitMaxXYReverseVelocity()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :limitMaxXYReverseVelocity, 0
    

    def limitXYToForwardAndReverseMaxVelocity()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :limitXYToForwardAndReverseMaxVelocity, 0
    

    def limitMaxXYVelocity(maxVelocity)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :limitMaxXYVelocity, 1
    

    def setMaxForwardVelocity(maxForwardVelocity)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setMaxForwardVelocity, 1
    

    def setMaxReverseVelocity(maxReverseVelocity)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setMaxReverseVelocity, 1
end

end; end; end; end; end

