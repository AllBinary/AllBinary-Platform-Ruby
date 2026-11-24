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
# package org.allbinary.game.ag.layer.hud.basic.life

require "java/lang/JavaOverload"
require "org/allbinary/game/graphics/hud/BasicHud"
require "org/allbinary/graphics/paint/PaintableInterface"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic; module Life

class LivesHudWidget < ::Org::Allbinary::Game::Graphics::Hud::BasicHud
    include ::Org::Allbinary::Graphics::Paint::PaintableInterface
    attr_accessor :lifeInterface, :xArray, :animationInterface

    def jfields_org_allbinary_game_ag_layer_hud_basic_life_LivesHudWidget
        @lifeInterface = nil unless instance_variable_defined?(:@lifeInterface)
        @xArray = nil unless instance_variable_defined?(:@xArray)
        @animationInterface = nil unless instance_variable_defined?(:@animationInterface)
    end
    

    def initialize(animationInterface, lifeInterface, location, direction)
        super(location, direction, 2, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE)
        jfields_org_allbinary_game_ag_layer_hud_basic_life_LivesHudWidget
        @lifeInterface = lifeInterface
        size = ((self.getLifeInterface().getMaxlives()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        @xArray = (Array.new(size, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        @animationInterface = animationInterface
        @updateMaxWidth = @lifeInterface.getMaxlives() * 16
        @updateMaxHeight = 16
    end
    

    def updateMeasurement(graphics)
        LivesHudWidget.superclass.java_super_method(:updateMeasurement, 1).bind(self).call(graphics)
        maxLives = ((self.getLifeInterface().getMaxlives()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        (0...maxLives).each do |index|
            @xArray[index] = self.getX() + (index * 16)
        end
    end
    java_overload :updateMeasurement, 1
    

    def onDisplayChangeEvent(displayChangeEvent)
        LivesHudWidget.superclass.java_super_method(:onDisplayChangeEvent, 1).bind(self).call(displayChangeEvent)
        @myFontProcessor = @updateMyFontProcessor
    end
    java_overload :onDisplayChangeEvent, 1
    

    def setX(x)
        LivesHudWidget.superclass.java_super_method(:setX, 1).bind(self).call(x)
        @myFontProcessor = @updateMyFontProcessor
    end
    java_overload :setX, 1
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        index = ((self.getLifeInterface().get()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        while (index -= 1) >= 0
            @animationInterface.paintXY(graphics, @xArray[index], self.getY())
        end
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
    end
    java_overload :paintThreed, 1
    

    def getLifeInterface()
        return @lifeInterface
    end
    java_overload :getLifeInterface, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Game; module Ag; module Life; autoload :Life, "org/allbinary/game/ag/life/Life" unless const_defined?(:Life, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Event; autoload :DisplayChangeEvent, "org/allbinary/graphics/displayable/event/DisplayChangeEvent" unless const_defined?(:DisplayChangeEvent, false); end; end; end; end; end

end; end; end; end; end; end; end; end

