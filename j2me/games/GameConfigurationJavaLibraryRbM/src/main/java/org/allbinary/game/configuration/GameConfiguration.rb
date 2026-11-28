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
# package org.allbinary.game.configuration

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Game; module Configuration

class GameConfiguration
    attr_accessor :name, :defaultValue, :value, :minValue, :maxValue, :modifiable

    def jfields_org_allbinary_game_configuration_GameConfiguration
        @name = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        @defaultValue = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(0)
        @value = MIN_VALUE
        @minValue = @defaultValue
        @maxValue = @defaultValue
        @modifiable = ::Org::Allbinary::Logic::Java::Bool::BooleanFactory.getInstance().TRUE
    end
    

    def initialize(name, defaultValue, minValue, maxValue)
        jfields_org_allbinary_game_configuration_GameConfiguration
        self.setName(name)
        self.setDefaultValue(defaultValue)
        @value = self.getDefaultValue()
        self.setMinValue(minValue)
        self.setMaxValue(maxValue)
        GameConfigurationSingleton.getInstance().getHashtable().put(self.getName(), self)
    end
    

    # throws Exception
    def setValue(value)
        if @value != value
            oldValue = @value
            @value = value
            ::Org::Allbinary::Game::Configuration::Event::GameFeatureEventHandler.getInstance().fireEvent(::Org::Allbinary::Game::Configuration::Event::GameFeatureEvent.new(self, ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@name).append(" value: from: ").appendint(((oldValue.to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(" to ").appendint(((@value.to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s))
        end
    end
    

    def getValue()
        return @value
    end
    

    def setMaxValue(maxValue)
        @maxValue = maxValue
    end
    

    def getMaxValue()
        return @maxValue
    end
    

    def setMinValue(minValue)
        @minValue = minValue
    end
    

    def getMinValue()
        return @minValue
    end
    

    def setName(name)
        @name = name
    end
    

    def getName()
        return @name
    end
    

    def setDefaultValue(defaultValue)
        @defaultValue = defaultValue
    end
    

    def getDefaultValue()
        return @defaultValue
    end
    

    # throws Exception
    def setDefault()
        self.setValue(self.getDefaultValue())
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("Name: ")
        stringBuffer.append(@name)
        stringBuffer.append(" Min: ")
        stringBuffer.appendint(((self.getMinValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(" Max: ")
        stringBuffer.appendint(((self.getMaxValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(" Value: ")
        stringBuffer.appendint(((self.getValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(" Default: ")
        stringBuffer.appendint(((self.getDefaultValue().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(" Modifiable: ")
        stringBuffer.appendboolean(self.isModifiable())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
    

    def setModifiable(modifiable)
        @modifiable = modifiable
    end
    

    def isModifiable()
        return @modifiable
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:MIN_VALUE, (-2147483648))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameConfiguration"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MIN_VALUE].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :GameFeatureEvent, "org/allbinary/game/configuration/event/GameFeatureEvent" unless const_defined?(:GameFeatureEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :GameFeatureEventHandler, "org/allbinary/game/configuration/event/GameFeatureEventHandler" unless const_defined?(:GameFeatureEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Bool; autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory" unless const_defined?(:BooleanFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :GameConfigurationSingleton, "org/allbinary/game/configuration/GameConfigurationSingleton" unless const_defined?(:GameConfigurationSingleton, false)

begin
    GameConfiguration.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

