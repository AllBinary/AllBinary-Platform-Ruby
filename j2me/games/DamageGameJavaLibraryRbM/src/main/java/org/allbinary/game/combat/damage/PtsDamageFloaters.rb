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

# require "javax/microedition/lcdui/Graphics"
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
        return defined?(@@basicColorArrayIndexer) ? @@basicColorArrayIndexer : nil
    end

    def self.basicColorArrayIndexer=(value)
        @@basicColorArrayIndexer = value
    end
end

require "org/allbinary/game/rand/MyRandomFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorArrayIndexer"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/color/BasicColorSetUtil"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/java/character/CharArrayFactory"
require "org/allbinary/logic/math/PrimitiveLongUtil"
require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/view/ViewPosition"
require "org/allbinary/view/ViewPositionBase"

class PtsDamageFloaters
    @@basicColorArrayIndexer = BasicColorArrayIndexer.new([BasicColorFactory.getInstance().WHITE, BasicColorFactory.getInstance().RED, BasicColorFactory.getInstance().YELLOW, BasicColorFactory.getInstance().BLUE])
end

