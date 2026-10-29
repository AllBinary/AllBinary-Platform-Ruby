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

# require "java/util/Arrays"

class OrderedObjectArrayPermutationUtil
    attr_accessor :TOTAL_ITERATIONS_TABLE, :FINISHED

    def initialize_fields
        @TOTAL_ITERATIONS_TABLE = "Total Iterations: "
        @FINISHED = "\nFINISHED"
    end
    

    def self.getInstance()
        return OrderedObjectArrayPermutationUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def getNext(data)
        length = data.length
        i = length - 1
        tsUtil = TsUtil.getInstance()
        while tsUtil.hashCode(data[i - 1]) >= tsUtil.hashCode(data[i])
            i = i - 1
        end
        j = length
        while tsUtil.hashCode(data[j - 1]) <= tsUtil.hashCode(data[i - 1])
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
        _TOTAL = 7
        data = Array.new(_TOTAL, nil)
        (0..._TOTAL).each do |i|
            data[i] = ComparableObject.new()
        end
        Arrays.sort(data)
        permutationVisitor = ObjectPermutationVisitor.new(data)
        _ORIGINAL_DATA_LABEL = "Original Data: "
        print(_ORIGINAL_DATA_LABEL)
        permutationVisitor.visit(data)
        OrderedObjectArrayPermutationUtil.getInstance().generate(data, permutationVisitor)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/logic/util/visitor/Visitor"
require "org/allbinary/logic/math/permutations/ComparableObject"
require "org/allbinary/logic/math/permutations/ObjectPermutationVisitor"
require "java/lang/System"

class OrderedObjectArrayPermutationUtil
    @@instance = OrderedObjectArrayPermutationUtil.new()
end

