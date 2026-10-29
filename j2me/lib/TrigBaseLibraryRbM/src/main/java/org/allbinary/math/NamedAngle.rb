# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# require "jsinterop/annotations/JsProperty"
# require "jsinterop/annotations/JsConstructor"
require "org/allbinary/math/Angle"

class NamedAngle < Angle
    attr_accessor :name

    def initialize_fields
        @name = nil
    end
    

    def initialize(angle, name)
        super(angle)
        initialize_fields
        @name = name
    end
end

