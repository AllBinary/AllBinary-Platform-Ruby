# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.osgi.framework


class NullServiceReference
    

    def getProperty(key)
        return NullUtil.getInstance().NULL_OBJECT
    end
    

    def getPropertyKeys()
        return StringUtil.getInstance().getArrayInstance()
    end
    

    def compareTo(o)
        raise RuntimeError.new()
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/string/StringUtil"

