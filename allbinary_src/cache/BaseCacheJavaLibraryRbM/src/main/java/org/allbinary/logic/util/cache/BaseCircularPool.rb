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
# package org.allbinary.logic.util.cache

require "java/lang/Object"
# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsProperty"

class BaseCircularPool
    attr_accessor :circularIndexUtil, :OBJECT_ARRAY

    def initialize_fields
        @circularIndexUtil = CircularIndexUtil::NULL_CIRCULAR_INDEX_UTIL
        @OBJECT_ARRAY = NullUtil.getInstance().NULL_OBJECT_ARRAY
    end

    def initialize
        initialize_fields
    end
    

    # throws Exception
    def getNextInstance()
        java_monitor.synchronize do
        anyType = @OBJECT_ARRAY[@circularIndexUtil.getIndex()]
        @circularIndexUtil.next_()
        return anyType
        end
    end
    

    def init(allBinaryObjectFactoryInterface)
        @circularIndexUtil.setIndex(0)
        size = @circularIndexUtil.getSize()
        (0...size).each do |index|
            @OBJECT_ARRAY[index] = allBinaryObjectFactoryInterface.getInstance()
        end
    end
    

    # throws Exception
    def getInstance(index)
        return @OBJECT_ARRAY[index]
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/logic/util/cache/AllBinaryObjectFactoryInterface"

