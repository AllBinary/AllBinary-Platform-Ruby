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
# package org.allbinary.graphics

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/cache/BaseCircularPool"

module ::Org; module Allbinary; module Graphics

class GPointCircularPool < ::Org::Allbinary::Logic::Util::Cache::BaseCircularPool
    

    def initialize(size)
        super()
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstance(size)
        @OBJECT_ARRAY = Array.new(size, nil)
        (size - 1).step(0, -(1)) do |index|
            @OBJECT_ARRAY[index] = CustomGPoint.getInstance3(0, 0)
        end
    end
end

module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end
autoload :CustomGPoint, "org/allbinary/graphics/CustomGPoint" unless const_defined?(:CustomGPoint, false)

end; end; end

