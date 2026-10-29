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
# package org.allbinary.game.physics.velocity


module BasicVelocityInterface
    

    def getVelocityXBasicDecimalP()
        raise NotImplementedError
    end
    

    def getVelocityYBasicDecimalP()
        raise NotImplementedError
    end
    

    def zero()
        raise NotImplementedError
    end
    

    def setVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal, direction, otherDirection)
        raise NotImplementedError
    end
    

    def addVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal, direction, otherDirection)
        raise NotImplementedError
    end
    

    def setVelocityWithDirection(magnitude, direction, otherDirection)
        raise NotImplementedError
    end
    

    def addVelocityWithDirection(magnitude, direction, otherDirection)
        raise NotImplementedError
    end
    

    def setVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)
        raise NotImplementedError
    end
    

    def addVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle)
        raise NotImplementedError
    end
    

    def setVelocity(magnitude, angle, otherAngle)
        raise NotImplementedError
    end
    

    def addVelocity(magnitude, angle, otherAngle)
        raise NotImplementedError
    end
    

    def addVelocityi(magnitude, angle, otherAngle)
        raise NotImplementedError
    end
end

require "org/allbinary/direction/Direction"
require "org/allbinary/logic/math/BasicDecimal"
require "org/allbinary/math/Angle"

