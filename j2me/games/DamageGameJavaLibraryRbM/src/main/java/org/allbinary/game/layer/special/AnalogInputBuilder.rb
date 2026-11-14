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
        AnalogInputBuilder.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AnalogInputBuilder.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AnalogInputBuilder.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AnalogInputBuilder"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Canvas, "javax/microedition/lcdui/Canvas"
autoload :GameInputProcessor, "org/allbinary/game/input/GameInputProcessor"
autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
autoload :Special1GameInputProcessor, "org/allbinary/game/layer/special/Special1GameInputProcessor"
autoload :Special3GameInputProcessor, "org/allbinary/game/layer/special/Special3GameInputProcessor"
autoload :SpecialAnalogDownGameInputProcessor, "org/allbinary/game/layer/special/SpecialAnalogDownGameInputProcessor"
autoload :SpecialAnalogLeftGameInputProcessor, "org/allbinary/game/layer/special/SpecialAnalogLeftGameInputProcessor"
autoload :SpecialAnalogLeftTriggerGameInputProcessor, "org/allbinary/game/layer/special/SpecialAnalogLeftTriggerGameInputProcessor"
autoload :SpecialAnalogRightGameInputProcessor, "org/allbinary/game/layer/special/SpecialAnalogRightGameInputProcessor"
autoload :SpecialAnalogRightTriggerGameInputProcessor, "org/allbinary/game/layer/special/SpecialAnalogRightTriggerGameInputProcessor"
autoload :SpecialAnalogUpGameInputProcessor, "org/allbinary/game/layer/special/SpecialAnalogUpGameInputProcessor"
autoload :SpecialDownGameInputProcessor, "org/allbinary/game/layer/special/SpecialDownGameInputProcessor"
autoload :SpecialLeftGameInputProcessor, "org/allbinary/game/layer/special/SpecialLeftGameInputProcessor"
autoload :SpecialRightGameInputProcessor, "org/allbinary/game/layer/special/SpecialRightGameInputProcessor"
autoload :SpecialUpGameInputProcessor, "org/allbinary/game/layer/special/SpecialUpGameInputProcessor"

begin
    AnalogInputBuilder.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

