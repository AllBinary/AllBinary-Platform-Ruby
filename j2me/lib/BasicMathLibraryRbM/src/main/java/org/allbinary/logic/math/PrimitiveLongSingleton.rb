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
# package org.allbinary.logic.math


class PrimitiveLongSingleton
    attr_accessor :UNK, :NUMBER_ARRAY, :NUMBER_CHAR_ARRAY, :NUMBER_CHAR_ARRAYS, :ZERO

    def initialize_fields
        @UNK = ["U", "n", "k"]
        @NUMBER_ARRAY = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        @NUMBER_CHAR_ARRAY = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
        @NUMBER_CHAR_ARRAYS = [["0"], ["1"], ["2"], ["3"], ["4"], ["5"], ["6"], ["7"], ["8"], ["9"]]
        @ZERO = [@NUMBER_CHAR_ARRAY[0]]
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return PrimitiveLongSingleton.instance
    end
    

    # throws Exception
    def getNumberFromChar(numberAsChar)
        size = @NUMBER_CHAR_ARRAY.length
        (0...size).each do |index|
            if @NUMBER_CHAR_ARRAY[index] == numberAsChar
                return @NUMBER_ARRAY[index]
            end
        end
        raise StandardError.new(StringMaker.new().append("numberAsChar was not in array: ").appendchar(numberAsChar).to_s)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringMaker"

class PrimitiveLongSingleton
    @@instance = PrimitiveLongSingleton.new()
end

