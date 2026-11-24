# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.math.permutations

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/visitor/Visitor"

module ::Org; module Allbinary; module Logic; module MathPackage; module Permutations

class IntPermutationVisitor < ::Org::Allbinary::Logic::Util::Visitor::Visitor
    attr_accessor :data, :stringBuilder

    def jfields_org_allbinary_logic_math_permutations_IntPermutationVisitor
        @data = nil unless instance_variable_defined?(:@data)
        @stringBuilder = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
    end
    

    def initialize(data)
        super()
        jfields_org_allbinary_logic_math_permutations_IntPermutationVisitor
        @data = data
    end
    

    def visit(anyType)
        @stringBuilder.delete(0, @stringBuilder.length())
        self.print(@data, @stringBuilder)
        return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
    end
    java_overload :visit, 1
    

    def print_j1(data)
        stringBuilder = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        self.print(data, stringBuilder)
    end
    

    def print_j2(data, stringBuilder)
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        size = data.length
        (0...size).each do |i|
            stringBuilder.appendint(data[i])
            stringBuilder.append(commonSeps.SPACE)
        end
        puts(stringBuilder.to_s)
    end

    def print(*java_overload_args)
        return print_j1(*java_overload_args) if java_overload_args.length == 1
        return print_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method print takes #{java_overload_args.length} arguments"
    end
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
require "java/lang/System"

end; end; end; end; end

