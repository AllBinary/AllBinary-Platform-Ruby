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

require "org/allbinary/game/physics/velocity/BasicVelocityInterface"

module VelocityInterface
    include BasicVelocityInterface
    

    def getMaxForwardVelocity()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getMaxReverseVelocity()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def limitMaxXYForwardVelocity()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def limitMaxXYReverseVelocity()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def limitXYToForwardAndReverseMaxVelocity()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def limitMaxXYVelocity(maxVelocity)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setMaxForwardVelocity(maxForwardVelocity)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setMaxReverseVelocity(maxReverseVelocity)
        return super if defined?(super)
        raise NotImplementedError
    end
end

