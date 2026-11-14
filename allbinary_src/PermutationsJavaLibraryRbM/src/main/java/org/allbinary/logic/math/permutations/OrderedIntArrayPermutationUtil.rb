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
# package org.allbinary.logic.math.permutations


class OrderedIntArrayPermutationUtil
    attr_accessor :TOTAL_ITERATIONS_TABLE, :FINISHED

    def initialize_fields
        @TOTAL_ITERATIONS_TABLE = "Total Iterations: "
        @FINISHED = "\nFINISHED"
    end
    

    def self.getInstance()
        return OrderedIntArrayPermutationUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def getNext(data)
        length = data.length
        i = length - 1
        while data[i - 1] >= data[i]
            i = i - 1
        end
        j = length
        while data[j - 1] <= data[i - 1]
            j = j - 1
        end
        self.swap(data, i - 1, j - 1)
        i += 1
        j = length
        while i < j
            self.swap(data, i - 1, j - 1)
            i += 1
            j -= 1
        end
    end
    

    def swap(data, a, b)
        temp = data[a]
        data[a] = data[b]
        data[b] = temp
    end
    

    def factorial(dataLength)
        temp = 1
        if dataLength > 1
            (1..dataLength).each do |i|
                temp *= i
            end
        end
        return temp
    end
    

    def generate(data, visitor)
        iterations = self.factorial(data.length)
        print(@TOTAL_ITERATIONS_TABLE)
        puts(iterations)
        (0...iterations - 1).each do |count|
            self.getNext(data)
            visitor.visit(self)
        end
        puts(@FINISHED)
    end
    

    def self.main(args)
        _TOTAL = 3
        data = Array.new(_TOTAL, 0)
        (0..._TOTAL).each do |i|
            data[i] = i
        end
        permutationVisitor = IntPermutationVisitor.new(data)
        _ORIGINAL_DATA_LABEL = "Original Data: "
        print(_ORIGINAL_DATA_LABEL)
        permutationVisitor.print(data, StringMaker.new())
        OrderedIntArrayPermutationUtil.getInstance().generate(data, permutationVisitor)
    end

    def self.instance()
        OrderedIntArrayPermutationUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        OrderedIntArrayPermutationUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = OrderedIntArrayPermutationUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "OrderedIntArrayPermutationUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Visitor, "org/allbinary/logic/util/visitor/Visitor"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :IntPermutationVisitor, "org/allbinary/logic/math/permutations/IntPermutationVisitor"
require "java/lang/System"

begin
    OrderedIntArrayPermutationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

