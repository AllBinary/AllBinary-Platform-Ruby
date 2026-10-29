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
# package org.allbinary.graphics.color

# require "java/awt"
require "org/allbinary/logic/util/cache/CacheableInterface"

class ColorCacheable
    include CacheableInterface
    attr_accessor :key, :color

    def initialize_fields
        @key = nil
        @color = nil
    end
    

    def initialize(key)
        initialize_fields
        @key = key
        @color = Color.new((key).to_i)
    end
    

    def getKey()
        return @key
    end
    

    def getColor()
        return @color
    end
    

    def setColor(color)
        @color = color
    end
end

