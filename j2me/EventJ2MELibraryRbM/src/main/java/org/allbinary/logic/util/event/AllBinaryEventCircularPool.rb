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
# package org.allbinary.logic.util.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/cache/BaseCircularPool"

module ::Org; module Allbinary; module Logic; module Util; module Event

class AllBinaryEventCircularPool < ::Org::Allbinary::Logic::Util::Cache::BaseCircularPool
    

    def initialize(max)
        super()
        @OBJECT_ARRAY = Array.new(max, nil)
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstance(max)
    end
    

    def initAllBinaryEventCircularPool(allBinaryEventObjectFactoryInterface)
        @circularIndexUtil.setIndex(0)
        size = @circularIndexUtil.getSize()
        (0...size).each do |index|
            @OBJECT_ARRAY[index] = allBinaryEventObjectFactoryInterface.getInstance()
        end
    end
    java_overload :initAllBinaryEventCircularPool, 1
end

module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end
autoload :AllBinaryEventObjectFactoryInterface, "org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface" unless const_defined?(:AllBinaryEventObjectFactoryInterface, false)

end; end; end; end; end

