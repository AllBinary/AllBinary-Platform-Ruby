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
# package org.allbinary.math

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"

module ::Org; module Allbinary; module MathPackage

class Angle
    attr_accessor :value

    def jfields_org_allbinary_math_Angle
        @value = nil unless instance_variable_defined?(:@value)
    end
    

    def initialize(angle)
        jfields_org_allbinary_math_Angle
        @value = angle
    end
    

    def getValue()
        return @value
    end
end

end; end; end

