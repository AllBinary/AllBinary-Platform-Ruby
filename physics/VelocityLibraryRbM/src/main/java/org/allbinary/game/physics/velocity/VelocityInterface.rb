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
        raise NotImplementedError
    end
    

    def getMaxReverseVelocity()
        raise NotImplementedError
    end
    

    def limitMaxXYForwardVelocity()
        raise NotImplementedError
    end
    

    def limitMaxXYReverseVelocity()
        raise NotImplementedError
    end
    

    def limitXYToForwardAndReverseMaxVelocity()
        raise NotImplementedError
    end
    

    def limitMaxXYVelocity(maxVelocity)
        raise NotImplementedError
    end
    

    def setMaxForwardVelocity(maxForwardVelocity)
        raise NotImplementedError
    end
    

    def setMaxReverseVelocity(maxReverseVelocity)
        raise NotImplementedError
    end
end

