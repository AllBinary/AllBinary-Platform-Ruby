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
# package org.allbinary.game.layer.special

# require "javax/microedition/lcdui/Canvas"

class AnalogInputBuilder
    

    def self.getInstance()
        return AnalogInputBuilder.instance
    end
    

    def disable(inputProcessorArray, collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas::UP] = SpecialUpGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas::DOWN] = SpecialDownGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas::RIGHT] = SpecialRightGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas::LEFT] = SpecialLeftGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas::KEY_NUM0] = Special1GameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas::KEY_NUM5] = Special3GameInputProcessor.new(collidableDestroyableDamageableLayer)
    end
    

    def enable(inputProcessorArray, collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas::UP] = SpecialAnalogUpGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas::DOWN] = SpecialAnalogDownGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas::RIGHT] = SpecialAnalogRightGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas::LEFT] = SpecialAnalogLeftGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas::KEY_NUM0] = SpecialAnalogLeftTriggerGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas::KEY_NUM5] = SpecialAnalogRightTriggerGameInputProcessor.new(collidableDestroyableDamageableLayer)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/input/GameInputProcessor"
require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/game/layer/special/Special1GameInputProcessor"
require "org/allbinary/game/layer/special/Special3GameInputProcessor"
require "org/allbinary/game/layer/special/SpecialAnalogDownGameInputProcessor"
require "org/allbinary/game/layer/special/SpecialAnalogLeftGameInputProcessor"
require "org/allbinary/game/layer/special/SpecialAnalogLeftTriggerGameInputProcessor"
require "org/allbinary/game/layer/special/SpecialAnalogRightGameInputProcessor"
require "org/allbinary/game/layer/special/SpecialAnalogRightTriggerGameInputProcessor"
require "org/allbinary/game/layer/special/SpecialAnalogUpGameInputProcessor"
require "org/allbinary/game/layer/special/SpecialDownGameInputProcessor"
require "org/allbinary/game/layer/special/SpecialLeftGameInputProcessor"
require "org/allbinary/game/layer/special/SpecialRightGameInputProcessor"
require "org/allbinary/game/layer/special/SpecialUpGameInputProcessor"

class AnalogInputBuilder
    @@instance = AnalogInputBuilder.new()
end

