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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/RTSInterface"

module ::Org; module Allbinary; module Game; module Rts; module Technology

class DamageTechnology
    include ::Org::Allbinary::Game::Layer::RTSInterface
    attr_accessor :level, :maxLevel

    def jfields_org_allbinary_game_rts_technology_DamageTechnology
        @level = 0 unless instance_variable_defined?(:@level)
        @maxLevel = nil unless instance_variable_defined?(:@maxLevel)
    end
    

    def initialize(maxLevel)
        jfields_org_allbinary_game_rts_technology_DamageTechnology
        @maxLevel = maxLevel
    end
    

    def isCompleted()
        return false
    end
    java_overload :isCompleted, 0
    

    def getPercentComplete()
        return 0
    end
    java_overload :getPercentComplete, 0
    

    def getLevel()
        return @level
    end
    java_overload :getLevel, 0
    

    def getMaxLevel()
        return @maxLevel
    end
    java_overload :getMaxLevel, 0
    

    def getCost()
        return 0
    end
    java_overload :getCost, 0
    

    def downgrade()
    end
    java_overload :downgrade, 0
    

    def getDowngradeCost()
        return 0
    end
    java_overload :getDowngradeCost, 0
    

    def isDowngradeable()
        return false
    end
    java_overload :isDowngradeable, 0
    

    def getUpgradeCost()
        return (self.getLevel() * self.getLevel()) * 1000
    end
    java_overload :getUpgradeCost, 0
    

    def isUpgradeable()
        if self.getLevel() < self.getMaxLevel()
            return true
        else
            return false
        end
    end
    java_overload :isUpgradeable, 0
    

    def upgrade()
        @level += 1
        unitTechnologySingletonFactory = UnitTechnologySingletonFactory.getInstance()
        unitTechnologySingletonFactory.setDamage(unitTechnologySingletonFactory.getDamage() + (self.getLevel() * 100))
    end
    java_overload :upgrade, 0
    

    def isSelfUpgradeable()
        return false
    end
    java_overload :isSelfUpgradeable, 0
end

autoload :UnitTechnologySingletonFactory, "org/allbinary/game/rts/technology/UnitTechnologySingletonFactory" unless const_defined?(:UnitTechnologySingletonFactory, false)

end; end; end; end; end

