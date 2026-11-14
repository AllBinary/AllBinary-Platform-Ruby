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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:SEQUENCE_AI, "Sequence AI")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SequenceAI"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SEQUENCE_AI].include?(name)
        end
        super
    end
end

autoload :ArtificialIntelligence, "org/allbinary/ai/ArtificialIntelligence"
autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface"
autoload :ArtificialIntelligenceTransitionInterface, "org/allbinary/ai/ArtificialIntelligenceTransitionInterface"
autoload :GameInput, "org/allbinary/game/input/GameInput"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"

begin
    SequenceAI.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

