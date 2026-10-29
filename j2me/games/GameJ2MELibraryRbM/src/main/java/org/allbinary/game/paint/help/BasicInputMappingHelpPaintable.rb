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
# package org.allbinary.game.paint.help

require "org/allbinary/game/paint/help/HelpPaintable"

class BasicInputMappingHelpPaintable < HelpPaintable
    attr_accessor :gameInputMappingArray, :NONE

    def initialize_fields
        @gameInputMappingArray = nil
        @NONE = GameKeyFactory.getInstance().NONE
    end
    

    def initialize(gameInputMappingArray, basicColor)
        super("Help Screen", BasicColorFactory.getInstance().BLACK, basicColor)
        initialize_fields
        @gameInputMappingArray = gameInputMappingArray
        self.update(@NONE, @NONE)
    end
    

    def update(selectedGameKey, selectedInput)
        gameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance()
        _EQUAL = " = "
        stringMaker = StringMaker.new()
        size = @gameInputMappingArray.length
        keyInfo = Array.new(size, nil)
        gameInputMapping = nil
        gameKey = nil
        list = nil
        (0...size).each do |index|
            gameInputMapping = @gameInputMappingArray[index]
            gameKey = gameInputMapping.getGameKey()
            list = gameKeyMapping.getInputMapping().getMappedInput(gameKey)
            stringMaker.delete(0, stringMaker.length())
            keyInfo[index] = stringMaker.append(gameInputMapping.getName()).append(_EQUAL).append(self.get(list)).to_s
        end
        self.class.superclass.instance_method(:setInputInfoP).bind(self).call(keyInfo)
    end
    

    def get(keyList)
        commonSeps = CommonSeps.getInstance()
        stringBuffer = StringMaker.new()
        _AND = "and "
        key = nil
        size = keyList.size()
        (0...size).each do |index|
            key = keyList.objectArray[index]
            stringBuffer.append(key.getName())
            if index + 1 < keyList.size()
                if keyList.size() == 2
                    stringBuffer.append(commonSeps.SPACE).append(_AND)
                else
                    if index + 2 == keyList.size()
                        stringBuffer.append(commonSeps.COMMA_SEP)
                        stringBuffer.append(_AND)
                    else
                        stringBuffer.append(commonSeps.COMMA_SEP)
                    end
                end
            end
        end
        return stringBuffer.to_s
    end
end

require "org/allbinary/game/input/GameKey"
require "org/allbinary/game/input/GameKeyFactory"
require "org/allbinary/game/input/Input"
require "org/allbinary/game/input/PlatformInputMappingFactory"
require "org/allbinary/game/input/mapping/GameInputMapping"
require "org/allbinary/game/input/mapping/PersistentInputMapping"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/BasicArrayList"

