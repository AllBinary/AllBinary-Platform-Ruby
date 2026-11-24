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
# package org.allbinary.system


module ::Org; module Allbinary; module System

#ActualPlatform
class Memory
    

    def self.getInfo()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        maxUtilizedMemoryAvailable = Runtime.getRuntime().maxMemory()
        memoryUsed = Runtime.getRuntime().totalMemory()
        stringBuffer.append("APK Memory: Available: ")
        stringBuffer.appendlong(maxUtilizedMemoryAvailable)
        stringBuffer.append("/")
        stringBuffer.appendlong(((Runtime.getRuntime().maxMemory()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        stringBuffer.append(" Used: ")
        stringBuffer.appendlong(memoryUsed)
        stringBuffer.append(" Free: ")
        stringBuffer.appendlong(maxUtilizedMemoryAvailable - memoryUsed)
        stringBuffer.append("/")
        stringBuffer.appendlong(((Runtime.getRuntime().maxMemory() - memoryUsed).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }))
        return stringBuffer.to_s
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

end; end; end

