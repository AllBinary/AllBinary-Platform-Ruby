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
# package org.allbinary.logic.util.cache


class CachePolicy
    attr_accessor :name, :maxTime, :maxSize

    def initialize_fields
        @name = nil
        @maxTime = 0
        @maxSize = 0
    end
    

    def initialize(name, maxTime, maxSize)
        initialize_fields
        @name = name
        self.setMaxTime(maxTime)
        self.setMaxSize(maxSize)
    end
    

    def getMaxTime()
        return @maxTime
    end
    

    def setMaxTime(maxTime)
        @maxTime = maxTime
    end
    

    def getMaxSize()
        return @maxSize
    end
    

    def setMaxSize(maxSize)
        @maxSize = maxSize
    end
    

    def getName()
        return @name
    end
end

