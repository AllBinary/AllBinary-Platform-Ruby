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
# package org.allbinary.game.part.weapon


module SalvoInterface
    

    # throws Exception
    def process(allbinaryLayerManager, angle, otherAngle)
        raise NotImplementedError
    end
    

    # throws Exception
    def processScore(allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface)
        raise NotImplementedError
    end
end

require "org/allbinary/game/combat/weapon/WeaponProperties"
require "org/allbinary/game/score/ScoreableInterface"
require "org/allbinary/layer/AllBinaryLayerManager"

