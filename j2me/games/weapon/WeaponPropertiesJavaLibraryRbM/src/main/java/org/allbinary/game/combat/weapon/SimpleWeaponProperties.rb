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
# package org.allbinary.game.combat.weapon


module ::Org; module Allbinary; module Game; module Combat; module Weapon

class SimpleWeaponProperties
    attr_accessor :damage, :dissipation, :range

    def jfields_org_allbinary_game_combat_weapon_SimpleWeaponProperties
        @damage = 0 unless instance_variable_defined?(:@damage)
        @dissipation = 0 unless instance_variable_defined?(:@dissipation)
        @range = 0 unless instance_variable_defined?(:@range)
    end

    def initialize
        jfields_org_allbinary_game_combat_weapon_SimpleWeaponProperties
    end
    

    def set(simpleWeaponProperties)
        self.setDamage(simpleWeaponProperties.getDamage())
        self.setDissipation(simpleWeaponProperties.getDissipation())
        self.setRange(simpleWeaponProperties.getRange())
    end
    

    def setDamage(damage)
        @damage = damage
    end
    

    def getDamage()
        return @damage
    end
    

    def setDissipation(dissipation)
        @dissipation = dissipation
    end
    

    def getDissipation()
        return @dissipation
    end
    

    def getRange()
        return @range
    end
    

    def setRange(range)
        @range = range
    end
end

end; end; end; end; end

