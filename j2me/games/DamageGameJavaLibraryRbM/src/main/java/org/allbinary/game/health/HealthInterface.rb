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
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def damage(ahealth)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def heal(ahealth)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def healMax()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getMaxHealth()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def setMaxHealth(maxHealth)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getHealth()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def addListener(healthListenerInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :HealthListenerInterface, "org/allbinary/game/health/HealthListenerInterface"

