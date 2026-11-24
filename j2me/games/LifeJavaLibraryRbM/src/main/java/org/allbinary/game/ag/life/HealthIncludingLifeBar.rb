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
# package org.allbinary.game.ag.life

require "java/lang/JavaOverload"
require "org/allbinary/game/health/HealthListenerInterface"
require "org/allbinary/graphics/paint/Paintable"

module ::Org; module Allbinary; module Game; module Ag; module Life

class HealthIncludingLifeBar < ::Org::Allbinary::Graphics::Paint::Paintable
    include ::Org::Allbinary::Game::Health::HealthListenerInterface
    attr_accessor :animationInterface, :life, :healthInterface, :allbinaryLayer

    def jfields_org_allbinary_game_ag_life_HealthIncludingLifeBar
        @animationInterface = nil unless instance_variable_defined?(:@animationInterface)
        @life = nil unless instance_variable_defined?(:@life)
        @healthInterface = nil unless instance_variable_defined?(:@healthInterface)
        @allbinaryLayer = nil unless instance_variable_defined?(:@allbinaryLayer)
    end
    

    # throws Exception
    def self.createHealthIncludingLifeBar(layerInterface, life, healthInterface, location, direction)
        return HealthIncludingLifeBar.new(layerInterface, life, healthInterface, ::Org::Allbinary::Game::Health::HealthBarTwodAnimation.new(layerInterface, location), direction)
    end
    

    def initialize(layerInterface, life, healthInterface, animationInterface, direction)
        super()
        jfields_org_allbinary_game_ag_life_HealthIncludingLifeBar
        @allbinaryLayer = layerInterface
        @animationInterface = animationInterface
        @life = life
        @healthInterface = healthInterface
        @healthInterface.addListener(self)
        self.onHealthChange()
    end
    

    def onHealthChange()
        @animationInterface.onHealthChange(((@healthInterface.getHealth() + (@healthInterface.getMaxHealth() * @life.get())) * @allbinaryLayer.getWidth()) / (@healthInterface.getMaxHealth() + (@healthInterface.getMaxHealth() * @life.getStartLives())))
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
module ::Org; module Allbinary; module Game; module Health; autoload :Health, "org/allbinary/game/health/Health" unless const_defined?(:Health, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Health; autoload :HealthBarAnimation, "org/allbinary/game/health/HealthBarAnimation" unless const_defined?(:HealthBarAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Health; autoload :HealthBarTwodAnimation, "org/allbinary/game/health/HealthBarTwodAnimation" unless const_defined?(:HealthBarTwodAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Health; autoload :HealthInterface, "org/allbinary/game/health/HealthInterface" unless const_defined?(:HealthInterface, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :Life, "org/allbinary/game/ag/life/Life" unless const_defined?(:Life, false)

end; end; end; end; end

