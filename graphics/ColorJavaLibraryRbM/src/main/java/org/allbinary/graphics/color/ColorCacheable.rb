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

require "java/lang/JavaOverload"
# require "java/awt/Color"
require "org/allbinary/logic/util/cache/CacheableInterface"

module ::Org; module Allbinary; module Graphics; module Color

class ColorCacheable
    include ::Org::Allbinary::Logic::Util::Cache::CacheableInterface
    attr_accessor :key, :color

    def jfields_org_allbinary_graphics_color_ColorCacheable
        @key = nil unless instance_variable_defined?(:@key)
        @color = nil unless instance_variable_defined?(:@color)
    end
    

    def initialize(key)
        jfields_org_allbinary_graphics_color_ColorCacheable
        @key = key
        @color = Color.new((key).to_i)
    end
    

    def getKey()
        return @key
    end
    java_overload :getKey, 0
    

    def getColor()
        return @color
    end
    java_overload :getColor, 0
    

    def setColor(color)
        @color = color
    end
    java_overload :setColor, 1
end

end; end; end; end

