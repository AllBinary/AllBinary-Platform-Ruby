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
# package org.allbinary.layer

require "org/allbinary/logic/util/cache/BaseCircularPool"

class AllBinaryLayerCircularPool < BaseCircularPool
    

    def initialize()
        super()
    end
    

    # throws Exception
    def initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface, total)
        @circularIndexUtil = CircularIndexUtil.createInstance(total)
        @OBJECT_ARRAY = Array.new(total, nil)
        (0...total).each do |localIndex|
            @OBJECT_ARRAY[localIndex] = allbinaryLayerFactoryInterface.getInstance()
        end
    end
end

require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerFactoryInterface"

