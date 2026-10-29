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

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"
# require "jsinterop/annotations/JsProperty"

class AllBinaryEventObject
    attr_accessor :source

    def initialize_fields
        @source = nil
    end
    

    def initialize(anyType)
        initialize_fields
        @source = anyType
    end
    

    def getSource()
        return @source
    end
    

    def setSource(source)
        @source = source
    end
end

require "org/allbinary/logic/NullUtil"

class AllBinaryEventObject
    NULL_EVENT = AllBinaryEventObject.new(NullUtil.getInstance().NULL_OBJECT)
end

