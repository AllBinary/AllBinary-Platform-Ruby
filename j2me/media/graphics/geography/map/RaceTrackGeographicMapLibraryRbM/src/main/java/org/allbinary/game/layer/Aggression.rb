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


module ::Org; module Allbinary; module Game; module Layer

class Aggression
    attr_accessor :ram, :projectile, :drops

    def jfields_org_allbinary_game_layer_Aggression
        @ram = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(0)
        @projectile = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(0)
        @drops = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(0)
    end
    

    def initialize(ram, projectile, drops)
        jfields_org_allbinary_game_layer_Aggression
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

module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end

end; end; end; end

