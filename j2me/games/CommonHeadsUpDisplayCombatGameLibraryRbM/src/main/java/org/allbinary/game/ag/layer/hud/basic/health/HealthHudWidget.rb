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
# package org.allbinary.game.ag.layer.hud.basic.health

require "java/lang/JavaOverload"
require "org/allbinary/game/graphics/hud/BasicHud"
require "org/allbinary/game/health/HealthListenerInterface"
require "org/allbinary/graphics/paint/PaintableInterface"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic; module Health

class HealthHudWidget < ::Org::Allbinary::Game::Graphics::Hud::BasicHud
    include ::Org::Allbinary::Graphics::Paint::PaintableInterface
    include ::Org::Allbinary::Game::Health::HealthListenerInterface
    attr_accessor :healthScale, :animationInterface, :healthInterface, :max, :xArray, :gameTickTimeDelayHelper, :timeDelayHelper, :slowBeatTimeDelayHelper, :mediumBeatTimeDelayHelper, :fastBeatTimeDelayHelper

    def jfields_org_allbinary_game_ag_layer_hud_basic_health_HealthHudWidget
        @healthScale = nil unless instance_variable_defined?(:@healthScale)
        @animationInterface = nil unless instance_variable_defined?(:@animationInterface)
        @healthInterface = nil unless instance_variable_defined?(:@healthInterface)
        @max = 0 unless instance_variable_defined?(:@max)
        @xArray = nil unless instance_variable_defined?(:@xArray)
        @gameTickTimeDelayHelper = ::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance()
        @timeDelayHelper = ::Org::Allbinary::TimePackage::NoTimeDelayHelper::SINGLETON
        @slowBeatTimeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(1280)
        @mediumBeatTimeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(640)
        @fastBeatTimeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(320)
    end
    

    def initialize(animationInterface, healthInterface, location, direction)
        super(location, direction, 2, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE)
        jfields_org_allbinary_game_ag_layer_hud_basic_health_HealthHudWidget
        @animationInterface = animationInterface
        @healthInterface = healthInterface
        @healthInterface.addListener(self)
        @healthScale = (@healthInterface.getMaxHealth() / 6) + 1
        self.onHealthChange()
        @updateMaxWidth = healthInterface.getMaxHealth() * 16
        @updateMaxHeight = 16
        @xArray = (Array.new(30, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        self.update()
    end
    

    def update()
        if @xArray != nil
            (0...@xArray.length).each do |index|
                @xArray[index] = self.getX() + (index * 16)
            end
        end
    end
    java_overload :update, 0
    

    def setX(x)
        HealthHudWidget.superclass.java_super_method(:setX, 1).bind(self).call(x)
        self.update()
    end
    java_overload :setX, 1
    

    def onHealthChange()
        @max = (@healthInterface.getHealth() / @healthScale)
        @timeDelayHelper = ::Org::Allbinary::TimePackage::NoTimeDelayHelper::SINGLETON
        if @max <= 1 && @healthInterface.isAlive()
            @max = 1
            if @healthScale - @healthInterface.getHealth() > (@healthScale * 2) / 3
                @timeDelayHelper = @slowBeatTimeDelayHelper
            elsif @healthScale - @healthInterface.getHealth() > @healthScale / 3
                @timeDelayHelper = @mediumBeatTimeDelayHelper
            else
                @timeDelayHelper = @fastBeatTimeDelayHelper
            end
        end
    end
    java_overload :onHealthChange, 0
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        (0...@max).each do |index|
            if @timeDelayHelper.isTime(@gameTickTimeDelayHelper.startTime)
                @animationInterface.paintXY(graphics, @xArray[index], self.getY())
            end
        end
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
    end
    java_overload :paintThreed, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Game; module Health; autoload :Health, "org/allbinary/game/health/Health" unless const_defined?(:Health, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelper, "org/allbinary/time/GameTickTimeDelayHelper" unless const_defined?(:GameTickTimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :NoTimeDelayHelper, "org/allbinary/time/NoTimeDelayHelper" unless const_defined?(:NoTimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end

end; end; end; end; end; end; end; end

