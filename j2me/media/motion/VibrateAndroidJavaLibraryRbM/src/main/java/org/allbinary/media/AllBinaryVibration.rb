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
    attr_accessor :vibrator

    def initialize_fields
        @vibrator = ResourceUtil.getInstance().getContext().getSystemService(Context::VIBRATOR_SERVICE)
    end
    

    def initialize()
        super()
        initialize_fields
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
        @vibrator.vibrate(duration)
    end
end

require "android/content/Context"
require "android/os/Vibrator"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/game/configuration/GameConfigurationCentral"
require "org/allbinary/media/AllBinaryNoVibration"

class AllBinaryVibration
    VIBRATION = AllBinaryNoVibration::NO_VIBRATION
end

