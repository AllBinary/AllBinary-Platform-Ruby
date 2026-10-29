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
        stringBuffer.append(Runtime.getRuntime().freeMemory())
        stringBuffer.append(" Total: ")
        stringBuffer.append(Runtime.getRuntime().totalMemory())
        return stringBuffer.to_s
    end
end

require "org/allbinary/logic/string/StringMaker"

