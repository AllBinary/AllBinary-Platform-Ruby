# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.rts.technology

require "org/allbinary/game/layer/RTSInterface"

class HealthTechnology
    include RTSInterface
    attr_accessor :level, :maxLevel

    def initialize_fields
        @level = 0
        @maxLevel = nil
    end
    

    def initialize(maxLevel)
        initialize_fields
        @maxLevel = maxLevel
    end
    

    def isCompleted()
        return false
    end
    

    def getPercentComplete()
        return 0
    end
    

    def getLevel()
        return @level
    end
    

    def getMaxLevel()
        return @maxLevel
    end
    

    def getCost()
        return 0
    end
    

    def downgrade()
    end
    

    def getDowngradeCost()
        return 0
    end
    

    def isDowngradeable()
        return false
    end
    

    def getUpgradeCost()
        return (self.getLevel() * self.getLevel()) * 1000
    end
    

    def isUpgradeable()
        if self.getLevel() < self.getMaxLevel()
            return true
        else
            return false
        end
    end
    

    def upgrade()
        @level += 1
        unitTechnologySingletonFactory = UnitTechnologySingletonFactory.getInstance()
        unitTechnologySingletonFactory.setHealth(unitTechnologySingletonFactory.getHealth() + (self.getLevel() * 100))
    end
    

    def isSelfUpgradeable()
        return false
    end
end

require "org/allbinary/game/rts/technology/UnitTechnologySingletonFactory"

