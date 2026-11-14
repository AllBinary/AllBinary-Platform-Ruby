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
            (AllBinaryVibration.send(:remove_const, :VIBRATION) if AllBinaryVibration.const_defined?(:VIBRATION, false); AllBinaryVibration.const_set(:VIBRATION, AllBinaryNoVibration::NO_VIBRATION))
        else
            (AllBinaryVibration.send(:remove_const, :VIBRATION) if AllBinaryVibration.const_defined?(:VIBRATION, false); AllBinaryVibration.const_set(:VIBRATION, AllBinaryVibration.new()))
        end
    end
    

    def vibrate(duration, type, volume)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:VIBRATION, AllBinaryNoVibration::NO_VIBRATION)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AllBinaryVibration"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:VIBRATION].include?(name)
        end
        super
    end
end

autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral"
autoload :AllBinaryNoVibration, "org/allbinary/media/AllBinaryNoVibration"

begin
    AllBinaryVibration.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

