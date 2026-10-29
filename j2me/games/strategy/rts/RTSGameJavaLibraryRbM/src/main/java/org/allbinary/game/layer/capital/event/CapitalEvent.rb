# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.layer.capital.event

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class CapitalEvent < AllBinaryEventObject
    attr_accessor :value

    def initialize_fields
        @value = 0
    end
    

    def initialize(anyType)
        super(anyType)
        initialize_fields
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("CapitalEvent: Value: \n")
        stringBuffer.appendint(self.getValue())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
    

    def getValue()
        return @value
    end
    

    def setValue(value)
        @value = value
    end
end

require "org/allbinary/logic/string/StringMaker"

