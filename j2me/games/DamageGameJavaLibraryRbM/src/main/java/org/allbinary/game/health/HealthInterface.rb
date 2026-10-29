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
# package org.allbinary.game.health


module HealthInterface
    

    def isAlive()
        raise NotImplementedError
    end
    

    def damage(ahealth)
        raise NotImplementedError
    end
    

    def heal(ahealth)
        raise NotImplementedError
    end
    

    def healMax()
        raise NotImplementedError
    end
    

    def getMaxHealth()
        raise NotImplementedError
    end
    

    def setMaxHealth(maxHealth)
        raise NotImplementedError
    end
    

    def getHealth()
        raise NotImplementedError
    end
    

    def addListener(healthListenerInterface)
        raise NotImplementedError
    end
end

require "org/allbinary/game/health/HealthListenerInterface"

