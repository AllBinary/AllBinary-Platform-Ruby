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
# package org.allbinary.media.image.comparison.color

require "org/allbinary/logic/util/cache/CacheableInterface"

class ColorDelta
    include CacheableInterface
    attr_accessor :rgb1, :rgb2, :key

    def initialize_fields
        @rgb1 = 0
        @rgb2 = 0
        @key = nil
    end
    

    def initialize(rgb1, rgb2)
        initialize_fields
        self.setRgb1(rgb1)
        self.setRgb2(rgb2)
        @key = ColorDelta.getKey(rgb1, rgb2)
    end
    

    def getKey()
        return @key
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def self.getKey(rgb1, rgb2)
        return StringMaker.new().append((rgb1).to_s).append(CommonSeps.getInstance().UNDERSCORE).append((rgb2).to_s).to_s
    end
    

    def getRgb1()
        return @rgb1
    end
    

    def setRgb1(rgb1)
        @rgb1 = rgb1
    end
    

    def getRgb2()
        return @rgb2
    end
    

    def setRgb2(rgb2)
        @rgb2 = rgb2
    end
    

    def toString()
        return StringMaker.new().append("ColorDelta: ").append(StringUtil.getInstance().toString(self.getKey())).append(" RGB1: ").appendint(self.getRgb1()).append(" RGB2: ").appendint(self.getRgb2()).to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonSeps"

