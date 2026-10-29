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
# package org.allbinary.logic.util.event

require "org/allbinary/logic/util/cache/BaseCircularPool"

class AllBinaryEventCircularPool < BaseCircularPool
    

    def initialize(max)
        super()
        @OBJECT_ARRAY = Array.new(max, nil)
        @circularIndexUtil = CircularIndexUtil.createInstance(max)
    end
    

    def initAllBinaryEventCircularPool(allBinaryEventObjectFactoryInterface)
        @circularIndexUtil.setIndex(0)
        size = @circularIndexUtil.getSize()
        (0...size).each do |index|
            @OBJECT_ARRAY[index] = allBinaryEventObjectFactoryInterface.getInstance()
        end
    end
end

require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface"

