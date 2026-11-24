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


module ::Org; module Allbinary; module Game; module Ag; module Ai

class NumberOnOwnGroupSequenceAIFactory
    attr_accessor :logUtil

    def jfields_org_allbinary_game_ag_ai_NumberOnOwnGroupSequenceAIFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_game_ag_ai_NumberOnOwnGroupSequenceAIFactory
    end
    

    # throws Exception
    def getInstance(hashtable, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
        integerArray = NumberInSameGroupSequence.getInstance().NUMBER_ON_SAME_TEAM_SEQUENCE
        list = ::Org::Allbinary::Util::BasicArrayListD.new()
        (0...integerArray.length).each do |index|
            integerCanBeNull = hashtable.get(integerArray[index])
            if integerCanBeNull == nil
                break
            end
            list.add(integerCanBeNull)
        end
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("Total AI Properties: ")
        stringBuffer.appendint(list.size())
        stringBuffer.append(" == Total AI: ")
        stringBuffer.appendint(artificialIntelligenceInterface.length)
        stringBuffer.append(" + 1")
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
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

module ::Org; module Allbinary; module Ai; autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface" unless const_defined?(:ArtificialIntelligenceInterface, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :NumberInSameGroupSequence, "org/allbinary/game/ag/ai/NumberInSameGroupSequence" unless const_defined?(:NumberInSameGroupSequence, false)
autoload :NumberOnOwnGroupSequenceAI, "org/allbinary/game/ag/ai/NumberOnOwnGroupSequenceAI" unless const_defined?(:NumberOnOwnGroupSequenceAI, false)

end; end; end; end; end

