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
# package org.allbinary.layer

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/cache/BaseCircularPool"

module ::Org; module Allbinary; module Layer

class AllBinaryLayerCircularPool < ::Org::Allbinary::Logic::Util::Cache::BaseCircularPool
    

    def initialize()
        super()
    end
    

    # throws Exception
    def initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface, total)
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstance(total)
        @OBJECT_ARRAY = Array.new(total, nil)
        (0...total).each do |localIndex|
            @OBJECT_ARRAY[localIndex] = allbinaryLayerFactoryInterface.getInstance()
        end
    end
    java_overload :initAllBinaryLayerCircularPool, 2
end

module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end
autoload :AllBinaryLayerFactoryInterface, "org/allbinary/layer/AllBinaryLayerFactoryInterface" unless const_defined?(:AllBinaryLayerFactoryInterface, false)

end; end; end

