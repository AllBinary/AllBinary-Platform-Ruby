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
# package org.allbinary.game.configuration

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "javax/microedition/lcdui/Gauge"

module ::Org; module Allbinary; module Game; module Configuration

class GameConfigurationGauge < ::Javax::Microedition::Lcdui::Gauge
    

    def initialize(gameConfiguration)
        super(gameConfiguration.getName(), gameConfiguration.isModifiable(), gameConfiguration.getMaxValue().to_i - gameConfiguration.getMinValue().to_i, gameConfiguration.getValue().to_i - gameConfiguration.getMinValue().to_i)
    end
end

autoload :GameConfiguration, "org/allbinary/game/configuration/GameConfiguration" unless const_defined?(:GameConfiguration, false)

end; end; end; end

