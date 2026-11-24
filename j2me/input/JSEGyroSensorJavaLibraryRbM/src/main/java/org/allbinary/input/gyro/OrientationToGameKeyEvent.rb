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


module ::Org; module Allbinary; module Input; module Gyro

class OrientationToGameKeyEvent
    attr_accessor :allBinaryGyroSensor, :MIN

    def jfields_org_allbinary_input_gyro_OrientationToGameKeyEvent
        @allBinaryGyroSensor = nil unless instance_variable_defined?(:@allBinaryGyroSensor)
        @MIN = 15
    end
    

    def initialize()
        jfields_org_allbinary_input_gyro_OrientationToGameKeyEvent
        if ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::SensorFeatureFactory.getInstance().NO_ORIENTATION)
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

module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :SensorFeatureFactory, "org/allbinary/game/configuration/feature/SensorFeatureFactory" unless const_defined?(:SensorFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :Orientation, "org/allbinary/logic/math/Orientation" unless const_defined?(:Orientation, false); end; end; end; end
autoload :AllBinaryOrientationSensor, "org/allbinary/input/gyro/AllBinaryOrientationSensor" unless const_defined?(:AllBinaryOrientationSensor, false)
autoload :NoGyroSensor, "org/allbinary/input/gyro/NoGyroSensor" unless const_defined?(:NoGyroSensor, false)

end; end; end; end

