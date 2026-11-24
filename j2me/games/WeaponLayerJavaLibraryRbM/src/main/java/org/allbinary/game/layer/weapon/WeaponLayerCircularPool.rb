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
# package org.allbinary.game.layer.weapon

require "java/lang/JavaOverload"
require "org/allbinary/layer/AllBinaryLayerCircularPool"

module ::Org; module Allbinary; module Game; module Layer; module Weapon

class WeaponLayerCircularPool < ::Org::Allbinary::Layer::AllBinaryLayerCircularPool
    

    def initialize()
        super()
    end
    

    # throws Exception
    def getInstanceWeaponLayer(sourceLayerInterface, x, y, z, angle, otherAngle, weaponProperties, scoreable)
        weaponLayer = WeaponLayerCircularPool.superclass.java_super_method(:getNextInstance, 0).bind(self).call()
        weaponLayer.initXYZ(x, y, z)
        weaponLayer.init(sourceLayerInterface, angle, otherAngle, weaponProperties, scoreable)
        return weaponLayer
    end
    java_overload :getInstanceWeaponLayer, 8
end

module ::Org; module Allbinary; module Game; module Combat; module Weapon; autoload :WeaponProperties, "org/allbinary/game/combat/weapon/WeaponProperties" unless const_defined?(:WeaponProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :ScoreableInterface, "org/allbinary/game/score/ScoreableInterface" unless const_defined?(:ScoreableInterface, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :WeaponLayer, "org/allbinary/game/layer/weapon/WeaponLayer" unless const_defined?(:WeaponLayer, false)

end; end; end; end; end

