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

require "org/allbinary/layer/AllBinaryLayerCircularPool"

class WeaponLayerCircularPool < AllBinaryLayerCircularPool
    

    def initialize()
        super()
    end
    

    # throws Exception
    def getInstanceWeaponLayer(sourceLayerInterface, x, y, z, angle, otherAngle, weaponProperties, scoreable)
        weaponLayer = WeaponLayerCircularPool.superclass.instance_method(:getNextInstance).bind(self).call()
        weaponLayer.initXYZ(x, y, z)
        weaponLayer.init(sourceLayerInterface, angle, otherAngle, weaponProperties, scoreable)
        return weaponLayer
    end
end

autoload :WeaponProperties, "org/allbinary/game/combat/weapon/WeaponProperties"
autoload :ScoreableInterface, "org/allbinary/game/score/ScoreableInterface"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :WeaponLayer, "org/allbinary/game/layer/weapon/WeaponLayer"

