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
        weaponLayer = self.class.superclass.instance_method(:getNextInstance).bind(self).call()
        weaponLayer.initXYZ(x, y, z)
        weaponLayer.init(sourceLayerInterface, angle, otherAngle, weaponProperties, scoreable)
        return weaponLayer
    end
end

require "org/allbinary/game/combat/weapon/WeaponProperties"
require "org/allbinary/game/score/ScoreableInterface"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/game/layer/weapon/WeaponLayer"

