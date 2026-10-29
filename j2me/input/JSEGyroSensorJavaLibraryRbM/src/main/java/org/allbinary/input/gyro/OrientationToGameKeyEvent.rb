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
# package org.allbinary.input.gyro


class OrientationToGameKeyEvent
    attr_accessor :allBinaryGyroSensor, :MIN

    def initialize_fields
        @allBinaryGyroSensor = nil
        @MIN = 15
    end
    

    def initialize()
        initialize_fields
        if Features.getInstance().isFeature(SensorFeatureFactory.getInstance().NO_ORIENTATION)
            @allBinaryGyroSensor = NoGyroSensor.new()
        else
            raise StandardError.new("Not Such Feature")
        end
    end
    

    def setAllBinaryGyroSensor(allBinaryGyroSensor)
        @allBinaryGyroSensor = allBinaryGyroSensor
    end
    

    def getAllBinaryGyroSensor()
        return @allBinaryGyroSensor
    end
    

    # throws Exception
    def process()
    end
    

    # throws Exception
    def updateGameKeyEvents(orientation, yaw, pitch, roll)
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/SensorFeatureFactory"
require "org/allbinary/logic/math/Orientation"
require "org/allbinary/input/gyro/AllBinaryOrientationSensor"
require "org/allbinary/input/gyro/NoGyroSensor"

