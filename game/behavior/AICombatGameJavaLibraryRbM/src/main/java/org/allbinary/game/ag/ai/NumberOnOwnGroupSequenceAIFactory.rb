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
# package org.allbinary.game.ag.ai


class NumberOnOwnGroupSequenceAIFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    # throws Exception
    def getInstance(hashtable, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        integerArray = NumberInSameGroupSequence.getInstance().NUMBER_ON_SAME_TEAM_SEQUENCE
        list = BasicArrayListD.new()
        (0...integerArray.length).each do |index|
            integerCanBeNull = hashtable.get(integerArray[index])
            if integerCanBeNull == nil
                break
            end
            list.add(integerCanBeNull)
        end
        stringBuffer = StringMaker.new()
        stringBuffer.append("Total AI Properties: ")
        stringBuffer.appendint(list.size())
        stringBuffer.append(" == Total AI: ")
        stringBuffer.appendint(artificialIntelligenceInterface.length)
        stringBuffer.append(" + 1")
        commonStrings = CommonStrings.getInstance()
        @logUtil.putF(stringBuffer.to_s, self, commonStrings.GET_INSTANCE)
        if artificialIntelligenceInterface.length - 1 > list.size()
            raise StandardError.new("Not enough AI properties.")
        end
        if artificialIntelligenceInterface.length - 1 < list.size()
            raise StandardError.new("Too Many AI properties.")
        end
        numberOnSameTeam = Array.new(list.size(), nil)
        (0...numberOnSameTeam.length).each do |index|
            numberOnSameTeam[index] = list.objectArray[index]
        end
        return NumberOnOwnGroupSequenceAI.new(numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    end
end

require "org/allbinary/ai/ArtificialIntelligenceInterface"
require "org/allbinary/game/input/GameInput"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/ag/ai/NumberInSameGroupSequence"
require "org/allbinary/game/ag/ai/NumberOnOwnGroupSequenceAI"

