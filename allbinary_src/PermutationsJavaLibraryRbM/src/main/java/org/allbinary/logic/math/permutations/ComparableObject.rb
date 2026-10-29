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
# package org.allbinary.logic.math.permutations


class ComparableObject
    include Comparable
    

    def compareTo(anyType)
        if TsUtil.getInstance().hashCode(self) < TsUtil.getInstance().hashCode(anyType)
            return -1
        elsif TsUtil.getInstance().hashCode(self) > TsUtil.getInstance().hashCode(anyType)
            return 1
        end
        return 0
    end
end

require "org/allbinary/TsUtil"

