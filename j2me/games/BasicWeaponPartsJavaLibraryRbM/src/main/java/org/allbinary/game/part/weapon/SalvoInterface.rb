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
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def processScore(allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :WeaponProperties, "org/allbinary/game/combat/weapon/WeaponProperties"
autoload :ScoreableInterface, "org/allbinary/game/score/ScoreableInterface"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"

