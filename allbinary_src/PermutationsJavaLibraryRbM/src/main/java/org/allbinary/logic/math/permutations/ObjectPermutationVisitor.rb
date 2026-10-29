# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.math.permutations

require "org/allbinary/logic/util/visitor/Visitor"

class ObjectPermutationVisitor < Visitor
    attr_accessor :data, :stringBuilder

    def initialize_fields
        @data = nil
        @stringBuilder = StringMaker.new()
    end
    

    def initialize(data)
        super()
        initialize_fields
        @data = data
    end
    

    def visit(anyType)
        @stringBuilder.delete(0, @stringBuilder.length())
        self.print(@data, @stringBuilder)
        return NullUtil.getInstance().NULL_OBJECT
    end
    

    def print(data)
        stringBuilder = StringMaker.new()
        self.print(data, stringBuilder)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def print(data, stringBuilder)
        tsUtil = TsUtil.getInstance()
        size = data.length
        (0...size).each do |i|
            stringBuilder.appendint((tsUtil.hashCode(data[i])).to_i)
            stringBuilder.append(CommonSeps.getInstance().SPACE)
        end
        puts(stringBuilder.to_s)
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "java/lang/System"

