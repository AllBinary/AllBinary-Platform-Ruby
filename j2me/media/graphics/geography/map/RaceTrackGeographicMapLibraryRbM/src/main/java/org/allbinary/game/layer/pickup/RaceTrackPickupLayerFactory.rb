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
# package org.allbinary.game.layer.pickup

require "java/lang/JavaOverload"
require "org/allbinary/layer/AllBinaryLayerFactoryInterface"

module ::Org; module Allbinary; module Game; module Layer; module Pickup

class RaceTrackPickupLayerFactory
    include ::Org::Allbinary::Layer::AllBinaryLayerFactoryInterface
    

    # throws Exception
    def getInstance()
        return RaceTrackPickupLayer.new()
    end
    java_overload :getInstance, 0
end

module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :RaceTrackPickupLayer, "org/allbinary/game/layer/pickup/RaceTrackPickupLayer" unless const_defined?(:RaceTrackPickupLayer, false)

end; end; end; end; end

