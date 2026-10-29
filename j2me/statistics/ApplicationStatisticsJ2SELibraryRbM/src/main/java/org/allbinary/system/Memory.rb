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
        stringBuffer.append("Memory: Free: ")
        stringBuffer.appendlong((Runtime.getRuntime().freeMemory()).to_i)
        stringBuffer.append(" Max: ")
        stringBuffer.appendlong((Runtime.getRuntime().maxMemory()).to_i)
        stringBuffer.append(" Total: ")
        stringBuffer.appendlong((Runtime.getRuntime().totalMemory()).to_i)
        return stringBuffer.to_s
    end
end

require "org/allbinary/logic/string/StringMaker"

