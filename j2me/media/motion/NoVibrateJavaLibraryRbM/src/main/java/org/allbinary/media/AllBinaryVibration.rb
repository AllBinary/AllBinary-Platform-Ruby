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
# package org.allbinary.media

require "org/allbinary/media/AllBinaryVibrationME"

class AllBinaryVibration < AllBinaryVibrationME
    

    def initialize()
        super()
    end
    

    def self.getInstance()
        return AllBinaryVibration::VIBRATION
    end
    

    def self.init()
        if GameConfigurationCentral.getInstance().VIBRATION.getValue().to_i == 0
            AllBinaryVibration::VIBRATION = AllBinaryNoVibration::NO_VIBRATION
        else
            AllBinaryVibration::VIBRATION = AllBinaryVibration.new()
        end
    end
    

    def vibrate(duration, type, volume)
    end
end

require "org/allbinary/game/configuration/GameConfigurationCentral"
require "org/allbinary/media/AllBinaryNoVibration"

class AllBinaryVibration
    VIBRATION = AllBinaryNoVibration::NO_VIBRATION
end

