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
end

require "org/allbinary/game/configuration/event/GameFeatureEvent"
require "org/allbinary/game/configuration/event/GameFeatureEventHandler"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/game/configuration/GameConfigurationSingleton"

class GameConfiguration
    MIN_VALUE = (-2147483648)
end

