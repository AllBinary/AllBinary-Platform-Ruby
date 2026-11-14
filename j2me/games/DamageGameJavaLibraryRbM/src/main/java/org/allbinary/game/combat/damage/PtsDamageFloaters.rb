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

require "org/allbinary/game/combat/damage/DamageFloaters"

class PtsDamageFloaters < DamageFloaters
    attr_accessor :basicSetColorUtil, :layerInterface, :lastDamage, :lastDamageString, :lastDamageStringSizeArray, :circularIndexUtil, :primitiveLongUtil, :myRandomFactory

    def initialize_fields
        @basicSetColorUtil = BasicColorSetUtil.getInstance()
        @layerInterface = nil
        @lastDamage = Array.new(5, 0)
        @lastDamageString = Array.new(5) { Array.new(0, "\0") }
        @lastDamageStringSizeArray = Array.new(5, 0)
        @circularIndexUtil = CircularIndexUtil.createInstance(5)
        @primitiveLongUtil = nil
        @myRandomFactory = MyRandomFactory.getInstance()
    end
    

    def initialize(layerInterface)
        super()
        initialize_fields
        @primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(100000)
        @layerInterface = layerInterface
        _CHAR_ARRAY = CharArrayFactory.getInstance().getZeroCharArray()
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
            @@basicColorArrayIndexer = BasicColorArrayIndexer.new([BasicColorFactory.getInstance().WHITE, BasicColorFactory.getInstance().RED, BasicColorFactory.getInstance().YELLOW, BasicColorFactory.getInstance().BLUE])
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

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :MyRandomFactory, "org/allbinary/game/rand/MyRandomFactory"
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor"
autoload :BasicColorArrayIndexer, "org/allbinary/graphics/color/BasicColorArrayIndexer"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :BasicColorSetUtil, "org/allbinary/graphics/color/BasicColorSetUtil"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :CharArrayFactory, "org/allbinary/logic/java/character/CharArrayFactory"
autoload :PrimitiveLongUtil, "org/allbinary/logic/math/PrimitiveLongUtil"
autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil"
autoload :ViewPosition, "org/allbinary/view/ViewPosition"
autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase"

begin
    PtsDamageFloaters.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

