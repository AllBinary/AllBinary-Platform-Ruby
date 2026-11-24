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
# package org.allbinary.game.layer.drop

require "java/lang/JavaOverload"
require "org/allbinary/layer/LayerInterface"

module ::Org; module Allbinary; module Game; module Layer; module Drop

module DropLayerInterface
    include ::Org::Allbinary::Layer::LayerInterface
    

    # throws Exception
    def getDroppedLayer()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getDroppedLayer, 0
end

module ::Org; module Allbinary; module Game; module Layer; module Pickup; autoload :PickedUpLayerInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterface" unless const_defined?(:PickedUpLayerInterface, false); end; end; end; end; end

end; end; end; end; end

