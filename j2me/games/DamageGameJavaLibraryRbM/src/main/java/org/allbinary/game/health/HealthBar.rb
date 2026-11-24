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
# package org.allbinary.game.health

require "java/lang/JavaOverload"
require "org/allbinary/graphics/paint/Paintable"
require "org/allbinary/game/health/HealthListenerInterface"

module ::Org; module Allbinary; module Game; module Health

class HealthBar < ::Org::Allbinary::Graphics::Paint::Paintable
    include HealthListenerInterface
    attr_accessor :animationInterface, :healthInterface, :allbinaryLayer

    def jfields_org_allbinary_game_health_HealthBar
        @animationInterface = nil unless instance_variable_defined?(:@animationInterface)
        @healthInterface = nil unless instance_variable_defined?(:@healthInterface)
        @allbinaryLayer = nil unless instance_variable_defined?(:@allbinaryLayer)
    end
    

    def initialize(layerInterface, healthInterface, animationInterface, direction)
        super()
        jfields_org_allbinary_game_health_HealthBar
        @allbinaryLayer = layerInterface
        @animationInterface = animationInterface
        @healthInterface = healthInterface
        @healthInterface.addListener(self)
        self.onHealthChange()
    end
    

    def onHealthChange()
        @animationInterface.onHealthChange(@healthInterface.getHealth() * @allbinaryLayer.getWidth() / @healthInterface.getMaxHealth())
    end
    java_overload :onHealthChange, 0
    

    def paint(graphics)
        @animationInterface.paintXY(graphics, 0, 0)
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
        @animationInterface.paintThreedXYZ(graphics, 0, 0, 0)
    end
    java_overload :paintThreed, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :Health, "org/allbinary/game/health/Health" unless const_defined?(:Health, false)
autoload :HealthBarAnimation, "org/allbinary/game/health/HealthBarAnimation" unless const_defined?(:HealthBarAnimation, false)
autoload :HealthInterface, "org/allbinary/game/health/HealthInterface" unless const_defined?(:HealthInterface, false)

end; end; end; end

