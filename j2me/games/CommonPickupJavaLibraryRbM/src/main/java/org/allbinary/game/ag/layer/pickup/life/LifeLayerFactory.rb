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
# package org.allbinary.game.ag.layer.pickup.life

require "java/lang/JavaOverload"
require "org/allbinary/layer/AllBinaryLayerFactoryInterface"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Pickup; module Life

class LifeLayerFactory
    include ::Org::Allbinary::Layer::AllBinaryLayerFactoryInterface
    

    # throws Exception
    def getInstance()
        return LifeLayer.new()
    end
    java_overload :getInstance, 0
end

module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :LifeLayer, "org/allbinary/game/ag/layer/pickup/life/LifeLayer" unless const_defined?(:LifeLayer, false)

end; end; end; end; end; end; end

