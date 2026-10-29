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

require "org/allbinary/logic/math/vector/MathVectorInterface"

class MathVector
    include MathVectorInterface
    attr_accessor :magnitudeBasicDecimal, :direction, :resultBasicDecimal

    def initialize_fields
        @magnitudeBasicDecimal = nil
        @direction = nil
        @resultBasicDecimal = nil
    end
    

    def initialize(magnitudeBasicDecimal, direction)
        initialize_fields
        @magnitudeBasicDecimal = magnitudeBasicDecimal
        @direction = direction
    end
    

    def getMagnitude()
        return @magnitudeBasicDecimal
    end
    

    def getDirection()
        return @direction
    end
    

    def getResult()
        return @resultBasicDecimal
    end
end

require "org/allbinary/logic/math/BasicDecimal"

