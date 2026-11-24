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

class NumberInSameGroupSequence
    attr_accessor :NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO, :NUMBER_ON_SAME_TEAM_SEQUENCE_ONE, :NUMBER_ON_SAME_TEAM_SEQUENCE_TWO, :NUMBER_ON_SAME_TEAM_SEQUENCE_THREE, :NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR, :NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE, :NUMBER_ON_SAME_TEAM_SEQUENCE_SIX, :NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN, :NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT, :NUMBER_ON_SAME_TEAM_SEQUENCE_NINE, :NUMBER_ON_SAME_TEAM_SEQUENCE

    def jfields_org_allbinary_game_ag_ai_NumberInSameGroupSequence
        @NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO = nil unless instance_variable_defined?(:@NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_ONE = nil unless instance_variable_defined?(:@NUMBER_ON_SAME_TEAM_SEQUENCE_ONE)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_TWO = nil unless instance_variable_defined?(:@NUMBER_ON_SAME_TEAM_SEQUENCE_TWO)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_THREE = nil unless instance_variable_defined?(:@NUMBER_ON_SAME_TEAM_SEQUENCE_THREE)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR = nil unless instance_variable_defined?(:@NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE = nil unless instance_variable_defined?(:@NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_SIX = nil unless instance_variable_defined?(:@NUMBER_ON_SAME_TEAM_SEQUENCE_SIX)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN = nil unless instance_variable_defined?(:@NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT = nil unless instance_variable_defined?(:@NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_NINE = nil unless instance_variable_defined?(:@NUMBER_ON_SAME_TEAM_SEQUENCE_NINE)
        @NUMBER_ON_SAME_TEAM_SEQUENCE = nil unless instance_variable_defined?(:@NUMBER_ON_SAME_TEAM_SEQUENCE)
    end
    

    def self.getInstance()
        return NumberInSameGroupSequence.new()
    end
    

    def initialize()
        jfields_org_allbinary_game_ag_ai_NumberInSameGroupSequence
        smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
        @NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO = smallIntegerSingletonFactory.getAt(100)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_ONE = smallIntegerSingletonFactory.getAt(101)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_TWO = smallIntegerSingletonFactory.getAt(102)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_THREE = smallIntegerSingletonFactory.getAt(103)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR = smallIntegerSingletonFactory.getAt(104)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE = smallIntegerSingletonFactory.getAt(105)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_SIX = smallIntegerSingletonFactory.getAt(106)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN = smallIntegerSingletonFactory.getAt(107)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT = smallIntegerSingletonFactory.getAt(108)
        @NUMBER_ON_SAME_TEAM_SEQUENCE_NINE = smallIntegerSingletonFactory.getAt(109)
        @NUMBER_ON_SAME_TEAM_SEQUENCE = [@NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO, @NUMBER_ON_SAME_TEAM_SEQUENCE_ONE, @NUMBER_ON_SAME_TEAM_SEQUENCE_THREE, @NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR, @NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE, @NUMBER_ON_SAME_TEAM_SEQUENCE_SIX, @NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN, @NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT, @NUMBER_ON_SAME_TEAM_SEQUENCE_NINE]
    end
end

module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end

end; end; end; end; end

