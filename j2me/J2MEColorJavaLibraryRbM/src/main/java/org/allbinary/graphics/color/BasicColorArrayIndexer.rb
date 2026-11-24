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

# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"

module ::Org; module Allbinary; module Graphics; module Color

class BasicColorArrayIndexer
    attr_accessor :basicColorArray, :circularIndexUtil

    def jfields_org_allbinary_graphics_color_BasicColorArrayIndexer
        @basicColorArray = nil unless instance_variable_defined?(:@basicColorArray)
        @circularIndexUtil = nil unless instance_variable_defined?(:@circularIndexUtil)
    end
    

    def initialize(basicColorArray)
        jfields_org_allbinary_graphics_color_BasicColorArrayIndexer
        @basicColorArray = basicColorArray
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstance(@basicColorArray.length)
    end
    

    def next_()
        @circularIndexUtil.next_()
    end
    

    def get()
        return @basicColorArray[@circularIndexUtil.getIndex()]
    end
    

    def getBasicColorArray()
        return @basicColorArray
    end
end

module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end
autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false)

end; end; end; end

