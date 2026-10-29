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
# package org.allbinary.media.image.comparison.pixel

require "org/allbinary/logic/util/cache/CacheableInterface"

class PixelDelta
    include CacheableInterface
    attr_accessor :point, :colorDelta, :key

    def initialize_fields
        @point = nil
        @colorDelta = nil
        @key = nil
    end
    

    def initialize(point, colorDelta)
        initialize_fields
        self.setPoint(point)
        self.setColorDelta(colorDelta)
        @key = PixelDelta.getKey(self.getPoint(), self.getColorDelta())
    end
    

    def getKey()
        return @key
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def self.getKey(point, colorDelta)
        return StringMaker.new().appendint((TsUtil.getInstance().hashCode(point)).to_i).append(CommonSeps.getInstance().UNDERSCORE).append(colorDelta.getKey().to_s).to_s
    end
    

    def getPoint()
        return @point
    end
    

    def setPoint(point)
        @point = point
    end
    

    def getColorDelta()
        return @colorDelta
    end
    

    def setColorDelta(colorDelta)
        @colorDelta = colorDelta
    end
    

    def toString()
        return StringMaker.new().append("PixelDelta: Point: ").append(@point.to_s).append(CommonSeps.getInstance().SPACE).append(@colorDelta.to_s).to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/graphics/GPoint"
require "org/allbinary/TsUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/image/comparison/color/ColorDelta"
require "org/allbinary/string/CommonSeps"

