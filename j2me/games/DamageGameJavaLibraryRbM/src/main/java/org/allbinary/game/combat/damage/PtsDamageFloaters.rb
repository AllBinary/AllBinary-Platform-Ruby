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
# package org.allbinary.game.combat.damage

require "java/lang/JavaOverload"
require "org/allbinary/game/combat/damage/DamageFloaters"

module ::Org; module Allbinary; module Game; module Combat; module Damage

class PtsDamageFloaters < DamageFloaters
    attr_accessor :basicSetColorUtil, :layerInterface, :lastDamage, :lastDamageString, :lastDamageStringSizeArray, :circularIndexUtil, :primitiveLongUtil, :myRandomFactory

    def jfields_org_allbinary_game_combat_damage_PtsDamageFloaters
        @basicSetColorUtil = ::Org::Allbinary::Graphics::Color::BasicColorSetUtil.getInstance()
        @layerInterface = nil unless instance_variable_defined?(:@layerInterface)
        @lastDamage = (Array.new(5, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        @lastDamageString = Array.new(5) { Array.new(0, "\0") }
        @lastDamageStringSizeArray = (Array.new(5, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstance(5)
        @primitiveLongUtil = nil unless instance_variable_defined?(:@primitiveLongUtil)
        @myRandomFactory = ::Org::Allbinary::Game::Rand::MyRandomFactory.getInstance()
    end
    

    def initialize(layerInterface)
        super()
        jfields_org_allbinary_game_combat_damage_PtsDamageFloaters
        @primitiveLongUtil = ::Org::Allbinary::Logic::MathPackage::PrimitiveLongUtil.createPowerOfTen(100000)
        @layerInterface = layerInterface
        _CHAR_ARRAY = ::Org::Allbinary::Logic::Java::Character::CharArrayFactory.getInstance().getZeroCharArray()
        (@lastDamageString.length - 1).step(0, -(1)) do |index|
            @lastDamageString[index] = _CHAR_ARRAY
        end
    end
    

    def add(damage)
        index = @circularIndexUtil.getIndex()
        @lastDamage[index] = damage
        @lastDamageString[index] = @primitiveLongUtil.getCharArray(@lastDamage[index])
        @lastDamageStringSizeArray[index] = @primitiveLongUtil.getCurrentTotalDigits()
        @circularIndexUtil.next_()
    end
    java_overload :add, 1
    

    def paint(graphics)
        viewPosition = @layerInterface.getViewPosition()
        x = viewPosition.getX()
        y = viewPosition.getY()
        (@lastDamage.length - 1).step(0, -(1)) do |index|
            if @lastDamage[index] != 0
                delta = 10 * (index + 2)
                @basicSetColorUtil.setBasicColorP(graphics, PtsDamageFloaters.basicColorArrayIndexer.get())
                graphics.drawChars(@lastDamageString[index], 0, @lastDamageStringSizeArray[index], x - @myRandomFactory.getNextInt(delta), y - delta, 0)
                PtsDamageFloaters.basicColorArrayIndexer.next_()
            end
            @lastDamage[index] = 0
        end
    end
    java_overload :paint, 1

    def self.basicColorArrayIndexer()
        PtsDamageFloaters.java_static_fields unless @java_static_fields_started
        return defined?(@@basicColorArrayIndexer) ? @@basicColorArrayIndexer : nil
    end

    def self.basicColorArrayIndexer=(value)
        PtsDamageFloaters.java_static_fields unless @java_static_fields_started
        @@basicColorArrayIndexer = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@basicColorArrayIndexer = ::Org::Allbinary::Graphics::Color::BasicColorArrayIndexer.new([::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().WHITE, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().RED, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().YELLOW, ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance().BLUE])
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PtsDamageFloaters"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Rand; autoload :MyRandomFactory, "org/allbinary/game/rand/MyRandomFactory" unless const_defined?(:MyRandomFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorArrayIndexer, "org/allbinary/graphics/color/BasicColorArrayIndexer" unless const_defined?(:BasicColorArrayIndexer, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorSetUtil, "org/allbinary/graphics/color/BasicColorSetUtil" unless const_defined?(:BasicColorSetUtil, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Character; autoload :CharArrayFactory, "org/allbinary/logic/java/character/CharArrayFactory" unless const_defined?(:CharArrayFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :PrimitiveLongUtil, "org/allbinary/logic/math/PrimitiveLongUtil" unless const_defined?(:PrimitiveLongUtil, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPosition, "org/allbinary/view/ViewPosition" unless const_defined?(:ViewPosition, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end

begin
    PtsDamageFloaters.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

