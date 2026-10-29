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


class NumberInSameGroupSequence
    attr_accessor :NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO, :NUMBER_ON_SAME_TEAM_SEQUENCE_ONE, :NUMBER_ON_SAME_TEAM_SEQUENCE_TWO, :NUMBER_ON_SAME_TEAM_SEQUENCE_THREE, :NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR, :NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE, :NUMBER_ON_SAME_TEAM_SEQUENCE_SIX, :NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN, :NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT, :NUMBER_ON_SAME_TEAM_SEQUENCE_NINE, :NUMBER_ON_SAME_TEAM_SEQUENCE

    def initialize_fields
        @NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO = nil
        @NUMBER_ON_SAME_TEAM_SEQUENCE_ONE = nil
        @NUMBER_ON_SAME_TEAM_SEQUENCE_TWO = nil
        @NUMBER_ON_SAME_TEAM_SEQUENCE_THREE = nil
        @NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR = nil
        @NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE = nil
        @NUMBER_ON_SAME_TEAM_SEQUENCE_SIX = nil
        @NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN = nil
        @NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT = nil
        @NUMBER_ON_SAME_TEAM_SEQUENCE_NINE = nil
        @NUMBER_ON_SAME_TEAM_SEQUENCE = nil
    end
    

    def self.getInstance()
        return NumberInSameGroupSequence.new()
    end
    

    def initialize()
        initialize_fields
        smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
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

require "org/allbinary/logic/math/SmallIntegerSingletonFactory"

