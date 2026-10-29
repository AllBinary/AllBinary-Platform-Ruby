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


#ActualPlatform
class Memory
    

    def self.getInfo()
        stringBuffer = StringMaker.new()
        maxUtilizedMemoryAvailable = Runtime.getRuntime().maxMemory()
        memoryUsed = Runtime.getRuntime().totalMemory()
        stringBuffer.append("APK Memory: Available: ")
        stringBuffer.appendlong(maxUtilizedMemoryAvailable)
        stringBuffer.append("/")
        stringBuffer.appendlong((Runtime.getRuntime().maxMemory()).to_i)
        stringBuffer.append(" Used: ")
        stringBuffer.appendlong(memoryUsed)
        stringBuffer.append(" Free: ")
        stringBuffer.appendlong(maxUtilizedMemoryAvailable - memoryUsed)
        stringBuffer.append("/")
        stringBuffer.appendlong((Runtime.getRuntime().maxMemory() - memoryUsed).to_i)
        return stringBuffer.to_s
    end
end

require "org/allbinary/logic/string/StringMaker"

