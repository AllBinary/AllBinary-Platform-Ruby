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
# package org.allbinary.input.magnetic.field

require "org/allbinary/input/AllBinarySensorListener"
require "org/allbinary/input/magnetic/field/AllBinaryMagneticFieldSensor"

class NoMagneticFieldSensor < AllBinaryMagneticFieldSensor
    include AllBinarySensorListener
    

    # throws Exception
    def getOrientation()
        return Orientation::NONE
    end
    

    def onSensorChange()
    end
end

require "org/allbinary/logic/math/Orientation"

