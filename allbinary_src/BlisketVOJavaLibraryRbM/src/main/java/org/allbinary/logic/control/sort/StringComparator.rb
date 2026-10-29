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
# package org.allbinary.logic.control.sort

# require "java/util/Comparator"

class StringComparator
    include Comparator
    

    def initialize()
    end
    

    def compare(anyType, object2)
        string = anyType
        string2 = object2
        return (string <=> string2)
    end
end

