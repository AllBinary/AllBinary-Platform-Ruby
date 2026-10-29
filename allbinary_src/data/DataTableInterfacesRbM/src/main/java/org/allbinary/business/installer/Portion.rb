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
# package org.allbinary.business.installer


class Portion
    attr_accessor :current, :total

    def initialize_fields
        @current = nil
        @total = nil
    end
    

    def initialize(hashMap)
        initialize_fields
        @current = hashMap.get("current")
        @total = hashMap.get("total")
    end
    

    def getCurrent()
        return @current
    end
    

    def getTotal()
        return @total
    end
end

require "java/util/HashMap"

