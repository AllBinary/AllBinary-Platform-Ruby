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


class GameConfiguration
    attr_accessor :name, :defaultValue, :value, :minValue, :maxValue, :modifiable

    def initialize_fields
        @name = StringUtil.getInstance().EMPTY_STRING
        @defaultValue = SmallIntegerSingletonFactory.getInstance().getAt(0)
        @value = GameConfiguration::MIN_VALUE
        @minValue = @defaultValue
        @maxValue = @defaultValue
        @modifiable = BooleanFactory.getInstance().TRUE
    end
    

    def initialize(name, defaultValue, minValue, maxValue)
        initialize_fields
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
            GameFeatureEventHandler.getInstance().fireEvent(GameFeatureEvent.new(self, StringMaker.new().append(@name).append(" value: from: ").appendint((oldValue.to_i).to_i).append(" to ").appendint((@value.to_i).to_i).to_s))
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
        stringBuffer = StringMaker.new()
        stringBuffer.append("Name: ")
        stringBuffer.append(@name)
        stringBuffer.append(" Min: ")
        stringBuffer.appendint((self.getMinValue().to_i).to_i)
        stringBuffer.append(" Max: ")
        stringBuffer.appendint((self.getMaxValue().to_i).to_i)
        stringBuffer.append(" Value: ")
        stringBuffer.appendint((self.getValue().to_i).to_i)
        stringBuffer.append(" Default: ")
        stringBuffer.appendint((self.getDefaultValue().to_i).to_i)
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

autoload :GameFeatureEvent, "org/allbinary/game/configuration/event/GameFeatureEvent"
autoload :GameFeatureEventHandler, "org/allbinary/game/configuration/event/GameFeatureEventHandler"
autoload :BooleanFactory, "org/allbinary/logic/java/bool/BooleanFactory"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :GameConfigurationSingleton, "org/allbinary/game/configuration/GameConfigurationSingleton"

begin
    GameConfiguration.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

