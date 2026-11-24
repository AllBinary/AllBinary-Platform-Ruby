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

module ::Org; module Allbinary; module Logic; module MathPackage; module Vector

class YAxisMathVector < MathVector
    

    def initialize(magnitudeBasicDecimal, direction)
        super(magnitudeBasicDecimal, direction)
        self.calculate()
    end
    

    def getResult()
        return @resultBasicDecimal
    end
    java_overload :getResult, 0
    

    def calculate()
        result = YAxisMathVectorUtil.calculate(self.getMagnitude().getUnscaled(), self.getDirection())
        @resultBasicDecimal = ::Org::Allbinary::Logic::MathPackage::BasicDecimal.new(result)
    end
    java_overload :calculate, 0
end

module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end

end; end; end; end; end

