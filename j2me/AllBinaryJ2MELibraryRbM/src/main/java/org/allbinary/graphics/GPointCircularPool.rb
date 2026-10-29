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
# package org.allbinary.graphics

require "org/allbinary/logic/util/cache/BaseCircularPool"

class GPointCircularPool < BaseCircularPool
    

    def initialize(size)
        super()
        @circularIndexUtil = CircularIndexUtil.createInstance(size)
        @OBJECT_ARRAY = Array.new(size, nil)
        (size - 1).step(0, -(1)) do |index|
            @OBJECT_ARRAY[index] = CustomGPoint.getInstance3(0, 0)
        end
    end
end

require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/graphics/CustomGPoint"

