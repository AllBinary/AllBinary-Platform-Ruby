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


module ::Org; module Allbinary; module Game; module Layer; module Special

class AnalogInputBuilder
    

    def self.getInstance()
        return AnalogInputBuilder.instance
    end
    

    def disable(inputProcessorArray, collidableDestroyableDamageableLayer)
        inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::UP] = SpecialUpGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::DOWN] = SpecialDownGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::RIGHT] = SpecialRightGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::LEFT] = SpecialLeftGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM0] = Special1GameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM5] = Special3GameInputProcessor.new(collidableDestroyableDamageableLayer)
    end
    

    def enable(inputProcessorArray, collidableDestroyableDamageableLayer)
        inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::UP] = SpecialAnalogUpGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::DOWN] = SpecialAnalogDownGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::RIGHT] = SpecialAnalogRightGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::LEFT] = SpecialAnalogLeftGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM0] = SpecialAnalogLeftTriggerGameInputProcessor.new(collidableDestroyableDamageableLayer)
        inputProcessorArray[::Javax::Microedition::Lcdui::Canvas::KEY_NUM5] = SpecialAnalogRightTriggerGameInputProcessor.new(collidableDestroyableDamageableLayer)
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

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInputProcessor, "org/allbinary/game/input/GameInputProcessor" unless const_defined?(:GameInputProcessor, false); end; end; end; end
autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false)
autoload :Special1GameInputProcessor, "org/allbinary/game/layer/special/Special1GameInputProcessor" unless const_defined?(:Special1GameInputProcessor, false)
autoload :Special3GameInputProcessor, "org/allbinary/game/layer/special/Special3GameInputProcessor" unless const_defined?(:Special3GameInputProcessor, false)
autoload :SpecialAnalogDownGameInputProcessor, "org/allbinary/game/layer/special/SpecialAnalogDownGameInputProcessor" unless const_defined?(:SpecialAnalogDownGameInputProcessor, false)
autoload :SpecialAnalogLeftGameInputProcessor, "org/allbinary/game/layer/special/SpecialAnalogLeftGameInputProcessor" unless const_defined?(:SpecialAnalogLeftGameInputProcessor, false)
autoload :SpecialAnalogLeftTriggerGameInputProcessor, "org/allbinary/game/layer/special/SpecialAnalogLeftTriggerGameInputProcessor" unless const_defined?(:SpecialAnalogLeftTriggerGameInputProcessor, false)
autoload :SpecialAnalogRightGameInputProcessor, "org/allbinary/game/layer/special/SpecialAnalogRightGameInputProcessor" unless const_defined?(:SpecialAnalogRightGameInputProcessor, false)
autoload :SpecialAnalogRightTriggerGameInputProcessor, "org/allbinary/game/layer/special/SpecialAnalogRightTriggerGameInputProcessor" unless const_defined?(:SpecialAnalogRightTriggerGameInputProcessor, false)
autoload :SpecialAnalogUpGameInputProcessor, "org/allbinary/game/layer/special/SpecialAnalogUpGameInputProcessor" unless const_defined?(:SpecialAnalogUpGameInputProcessor, false)
autoload :SpecialDownGameInputProcessor, "org/allbinary/game/layer/special/SpecialDownGameInputProcessor" unless const_defined?(:SpecialDownGameInputProcessor, false)
autoload :SpecialLeftGameInputProcessor, "org/allbinary/game/layer/special/SpecialLeftGameInputProcessor" unless const_defined?(:SpecialLeftGameInputProcessor, false)
autoload :SpecialRightGameInputProcessor, "org/allbinary/game/layer/special/SpecialRightGameInputProcessor" unless const_defined?(:SpecialRightGameInputProcessor, false)
autoload :SpecialUpGameInputProcessor, "org/allbinary/game/layer/special/SpecialUpGameInputProcessor" unless const_defined?(:SpecialUpGameInputProcessor, false)

begin
    AnalogInputBuilder.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

