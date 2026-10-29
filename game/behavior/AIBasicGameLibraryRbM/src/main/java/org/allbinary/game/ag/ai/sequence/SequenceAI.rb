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
# package org.allbinary.game.ag.ai.sequence

require "org/allbinary/game/ag/ai/ArrayAI"

class SequenceAI < ArrayAI
    attr_accessor :index

    def initialize_fields
        @index = 0
    end
    

    def initialize(artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput)
        super(artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput)
        initialize_fields
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        self.getArtificialIntelligenceInterface()[@index].processAI(allBinaryLayerManager)
    end
    

    def next_()
        @index += 1
        artificialIntelligenceInterface = self.getSelectedArtificialIntelligenceInterface()
        if artificialIntelligenceInterface.getId() == ArtificialIntelligence::AI_ID
            artificialIntelligenceTransitionInterface = artificialIntelligenceInterface
            artificialIntelligenceTransitionInterface.transition()
        end
    end
    

    def getIndex()
        return @index
    end
    

    def setIndex(index)
        @index = index
    end
    

    def getSelectedArtificialIntelligenceInterface()
        return self.getArtificialIntelligenceInterface()[@index]
    end
    

    def getName()
        return SequenceAI::SEQUENCE_AI
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(super.to_s)
        stringBuffer.append(" Selected AI: ")
        stringBuffer.append(StringUtil.getInstance().toString(self.getSelectedArtificialIntelligenceInterface()))
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/ai/ArtificialIntelligence"
require "org/allbinary/ai/ArtificialIntelligenceInterface"
require "org/allbinary/ai/ArtificialIntelligenceTransitionInterface"
require "org/allbinary/game/input/GameInput"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"

class SequenceAI
    SEQUENCE_AI = "Sequence AI"
end

