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

require "java/lang/JavaOverload"
require "org/allbinary/media/AllBinaryVibrationME"

module ::Org; module Allbinary; module Media

class AllBinaryVibration < AllBinaryVibrationME
    

    def initialize()
        super()
    end
    

    def self.getInstance()
        return VIBRATION
    end
    

    def self.init()
        if ::Org::Allbinary::Game::Configuration::GameConfigurationCentral.getInstance().VIBRATION.getValue().to_i == 0
            (AllBinaryVibration.instance_exec(AllBinaryNoVibration::NO_VIBRATION) { |java_value| remove_const(:VIBRATION) if const_defined?(:VIBRATION, false); const_set(:VIBRATION, java_value) })
        else
            (AllBinaryVibration.instance_exec(AllBinaryVibration.new()) { |java_value| remove_const(:VIBRATION) if const_defined?(:VIBRATION, false); const_set(:VIBRATION, java_value) })
        end
    end
    

    def vibrate(duration, type, volume)
    end
    java_overload :vibrate, 3

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

module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral" unless const_defined?(:GameConfigurationCentral, false); end; end; end; end
autoload :AllBinaryNoVibration, "org/allbinary/media/AllBinaryNoVibration" unless const_defined?(:AllBinaryNoVibration, false)

begin
    AllBinaryVibration.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

