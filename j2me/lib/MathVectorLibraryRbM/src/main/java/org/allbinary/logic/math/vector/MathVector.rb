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
# package org.allbinary.logic.math.vector

require "java/lang/JavaOverload"
require "org/allbinary/logic/math/vector/MathVectorInterface"

module ::Org; module Allbinary; module Logic; module MathPackage; module Vector

class MathVector
    include MathVectorInterface
    attr_accessor :magnitudeBasicDecimal, :direction, :resultBasicDecimal

    def jfields_org_allbinary_logic_math_vector_MathVector
        @magnitudeBasicDecimal = nil unless instance_variable_defined?(:@magnitudeBasicDecimal)
        @direction = nil unless instance_variable_defined?(:@direction)
        @resultBasicDecimal = nil unless instance_variable_defined?(:@resultBasicDecimal)
    end
    

    def initialize(magnitudeBasicDecimal, direction)
        jfields_org_allbinary_logic_math_vector_MathVector
        @magnitudeBasicDecimal = magnitudeBasicDecimal
        @direction = direction
    end
    

    def getMagnitude()
        return @magnitudeBasicDecimal
    end
    java_overload :getMagnitude, 0
    

    def getDirection()
        return @direction
    end
    java_overload :getDirection, 0
    

    def getResult()
        return @resultBasicDecimal
    end
    java_overload :getResult, 0
end

module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end

end; end; end; end; end

