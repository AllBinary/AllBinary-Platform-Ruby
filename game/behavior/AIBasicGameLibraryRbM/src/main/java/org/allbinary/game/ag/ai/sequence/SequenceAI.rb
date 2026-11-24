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

require "java/lang/JavaOverload"
require "org/allbinary/game/ag/ai/ArrayAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai; module Sequence

class SequenceAI < ::Org::Allbinary::Game::Ag::Ai::ArrayAI
    attr_accessor :index

    def jfields_org_allbinary_game_ag_ai_sequence_SequenceAI
        @index = 0 unless instance_variable_defined?(:@index)
    end
    

    def initialize(artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput)
        super(artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_sequence_SequenceAI
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        self.getArtificialIntelligenceInterface()[@index].processAI(allBinaryLayerManager)
    end
    java_overload :processAI, 1
    

    def next_()
        @index += 1
        artificialIntelligenceInterface = self.getSelectedArtificialIntelligenceInterface()
        if artificialIntelligenceInterface.getId() == ::Org::Allbinary::Ai::ArtificialIntelligence::AI_ID
            artificialIntelligenceTransitionInterface = artificialIntelligenceInterface
            artificialIntelligenceTransitionInterface.transition()
        end
    end
    java_overload :next_, 0
    

    def getIndex()
        return @index
    end
    java_overload :getIndex, 0
    

    def setIndex(index)
        @index = index
    end
    java_overload :setIndex, 1
    

    def getSelectedArtificialIntelligenceInterface()
        return self.getArtificialIntelligenceInterface()[@index]
    end
    java_overload :getSelectedArtificialIntelligenceInterface, 0
    

    def getName()
        return SequenceAI::SEQUENCE_AI
    end
    java_overload :getName, 0
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(super.to_s)
        stringBuffer.append(" Selected AI: ")
        stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(self.getSelectedArtificialIntelligenceInterface()))
        return stringBuffer.to_s
    end
    java_overload :toString, 0
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

module ::Org; module Allbinary; module Ai; autoload :ArtificialIntelligence, "org/allbinary/ai/ArtificialIntelligence" unless const_defined?(:ArtificialIntelligence, false); end; end; end
module ::Org; module Allbinary; module Ai; autoload :ArtificialIntelligenceInterface, "org/allbinary/ai/ArtificialIntelligenceInterface" unless const_defined?(:ArtificialIntelligenceInterface, false); end; end; end
module ::Org; module Allbinary; module Ai; autoload :ArtificialIntelligenceTransitionInterface, "org/allbinary/ai/ArtificialIntelligenceTransitionInterface" unless const_defined?(:ArtificialIntelligenceTransitionInterface, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

begin
    SequenceAI.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

