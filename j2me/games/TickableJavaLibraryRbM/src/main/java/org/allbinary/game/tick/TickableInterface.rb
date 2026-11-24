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
# package org.allbinary.game.tick

require "java/lang/JavaOverload"
require "org/allbinary/layer/NamedInterface"

module ::Org; module Allbinary; module Game; module Tick

module TickableInterface
    include ::Org::Allbinary::Layer::NamedInterface
    

    # throws Exception
    def processTick(allBinaryLayerManager)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :processTick, 1
end

module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end

end; end; end; end

