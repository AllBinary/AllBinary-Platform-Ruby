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

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/logic/util/cache/CacheableInterface"

module ::Org; module Allbinary; module Media; module Image; module Comparison; module Pixel

class PixelDelta
    include ::Org::Allbinary::Logic::Util::Cache::CacheableInterface
    attr_accessor :point, :colorDelta, :key

    def jfields_org_allbinary_media_image_comparison_pixel_PixelDelta
        @point = nil unless instance_variable_defined?(:@point)
        @colorDelta = nil unless instance_variable_defined?(:@colorDelta)
        @key = nil unless instance_variable_defined?(:@key)
    end
    

    def initialize(point, colorDelta)
        jfields_org_allbinary_media_image_comparison_pixel_PixelDelta
        self.setPoint(point)
        self.setColorDelta(colorDelta)
        @key = PixelDelta.getKey(self.getPoint(), self.getColorDelta())
    end
    

    def getKey()
        return @key
    end
    java_overload :getKey, 0
    

    def self.getKey(point, colorDelta)
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().appendint(((::Org::Allbinary::TsUtil.getInstance().hashCode(point)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().UNDERSCORE).append(colorDelta.getKey().to_s).to_s
    end
    

    def getPoint()
        return @point
    end
    java_overload :getPoint, 0
    

    def setPoint(point)
        @point = point
    end
    java_overload :setPoint, 1
    

    def getColorDelta()
        return @colorDelta
    end
    java_overload :getColorDelta, 0
    

    def setColorDelta(colorDelta)
        @colorDelta = colorDelta
    end
    java_overload :setColorDelta, 1
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("PixelDelta: Point: ").append(@point.to_s).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(@colorDelta.to_s).to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Graphics; autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false); end; end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Comparison; module Color; autoload :ColorDelta, "org/allbinary/media/image/comparison/color/ColorDelta" unless const_defined?(:ColorDelta, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

end; end; end; end; end; end

