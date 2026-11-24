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

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/cache/CacheableInterface"

module ::Org; module Allbinary; module Media; module Image; module Comparison; module Color

class ColorDelta
    include ::Org::Allbinary::Logic::Util::Cache::CacheableInterface
    attr_accessor :rgb1, :rgb2, :key

    def jfields_org_allbinary_media_image_comparison_color_ColorDelta
        @rgb1 = 0 unless instance_variable_defined?(:@rgb1)
        @rgb2 = 0 unless instance_variable_defined?(:@rgb2)
        @key = nil unless instance_variable_defined?(:@key)
    end
    

    def initialize(rgb1, rgb2)
        jfields_org_allbinary_media_image_comparison_color_ColorDelta
        self.setRgb1(rgb1)
        self.setRgb2(rgb2)
        @key = ColorDelta.getKey(rgb1, rgb2)
    end
    

    def getKey()
        return @key
    end
    java_overload :getKey, 0
    

    def self.getKey(rgb1, rgb2)
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append((rgb1).to_s).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().UNDERSCORE).append((rgb2).to_s).to_s
    end
    

    def getRgb1()
        return @rgb1
    end
    java_overload :getRgb1, 0
    

    def setRgb1(rgb1)
        @rgb1 = rgb1
    end
    java_overload :setRgb1, 1
    

    def getRgb2()
        return @rgb2
    end
    java_overload :getRgb2, 0
    

    def setRgb2(rgb2)
        @rgb2 = rgb2
    end
    java_overload :setRgb2, 1
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("ColorDelta: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(self.getKey())).append(" RGB1: ").appendint(self.getRgb1()).append(" RGB2: ").appendint(self.getRgb2()).to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

end; end; end; end; end; end

