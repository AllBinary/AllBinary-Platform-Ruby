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
# package org.allbinary.util

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsConstructor"
require "org/allbinary/util/BasicArrayList"

class BasicArrayListS < BasicArrayList
    

    def initialize(size)
        super(NullUtil.getInstance().NULL_OBJECT_ARRAY)
        if size < 0
            raise ArgumentError.new(StringMaker.new().append("Init Size Exception: ").appendint(size).to_s)
        end
        @objectArray = Array.new(size, nil)
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/string/StringMaker"

