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


module ::Org; module Allbinary; module Logic; module Util; module Cache

class CacheType
    attr_accessor :vendor, :type

    def jfields_org_allbinary_logic_util_cache_CacheType
        @vendor = nil unless instance_variable_defined?(:@vendor)
        @type = nil unless instance_variable_defined?(:@type)
    end
    

    def initialize(vendor, type)
        jfields_org_allbinary_logic_util_cache_CacheType
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
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("CacheType: Vendor: ")
        stringBuffer.append(self.getVendor())
        stringBuffer.append(" Type: ")
        stringBuffer.append(self.getType())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

end; end; end; end; end

