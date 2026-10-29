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

require "org/allbinary/layer/AllBinaryLayerFactoryInterface"

class AllBinaryLayerFactory
    include AllBinaryLayerFactoryInterface
    attr_accessor :rectangle

    def initialize_fields
        @rectangle = nil
    end
    

    def initialize(rectangle)
        initialize_fields
        @rectangle = rectangle
    end
    

    def getInstance()
        return AllBinaryLayer.new(StringUtil.getInstance().EMPTY_STRING, @rectangle, ViewPosition.getInstanceD())
    end
end

require "org/allbinary/graphics/Rectangle"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/view/ViewPosition"
require "org/allbinary/layer/AllBinaryLayer"

