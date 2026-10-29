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
# package org.allbinary.game.layer


class Aggression
    attr_accessor :ram, :projectile, :drops

    def initialize_fields
        @ram = SmallIntegerSingletonFactory.getInstance().getAt(0)
        @projectile = SmallIntegerSingletonFactory.getInstance().getAt(0)
        @drops = SmallIntegerSingletonFactory.getInstance().getAt(0)
    end
    

    def initialize(ram, projectile, drops)
        initialize_fields
        self.setRam(ram)
        self.setProjectile(projectile)
        self.setDrops(drops)
    end
    

    def getRam()
        return @ram
    end
    

    def setRam(ram)
        @ram = ram
    end
    

    def getProjectile()
        return @projectile
    end
    

    def setProjectile(projectile)
        @projectile = projectile
    end
    

    def getDrops()
        return @drops
    end
    

    def setDrops(drops)
        @drops = drops
    end
end

require "org/allbinary/logic/math/SmallIntegerSingletonFactory"

