# 
# AllBinary Open License Version 1 
# Copyright (c) 2007 AllBinary 
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


class CacheType
    attr_accessor :vendor, :type

    def initialize_fields
        @vendor = nil
        @type = nil
    end
    

    def initialize(vendor, type)
        initialize_fields
        @vendor = vendor
        @type = type
    end
    

    def getVendor()
        return @vendor
    end
    

    def getType()
        return @type
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("CacheType: Vendor: ")
        stringBuffer.append(self.getVendor())
        stringBuffer.append(" Type: ")
        stringBuffer.append(self.getType())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"

