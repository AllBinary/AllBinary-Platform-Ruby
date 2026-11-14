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
        PrimitiveLongSingleton.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PrimitiveLongSingleton.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PrimitiveLongSingleton.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PrimitiveLongSingleton"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :StringMaker, "org/allbinary/logic/string/StringMaker"

begin
    PrimitiveLongSingleton.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

