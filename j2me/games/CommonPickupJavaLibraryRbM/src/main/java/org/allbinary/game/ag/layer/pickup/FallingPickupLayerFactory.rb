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
# package org.allbinary.game.ag.layer.pickup

require "java/lang/JavaOverload"
require "org/allbinary/layer/AllBinaryLayerFactoryInterface"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Pickup

class FallingPickupLayerFactory
    include ::Org::Allbinary::Layer::AllBinaryLayerFactoryInterface
    

    # throws Exception
    def getInstance()
        return FallingPickupLayer.new(::Org::Allbinary::Game::Multiplayer::Layer::RemoteInfo::REMOTE_INFO)
    end
    java_overload :getInstance, 0
end

module ::Org; module Allbinary; module Game; module Multiplayer; module Layer; autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo" unless const_defined?(:RemoteInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :FallingPickupLayer, "org/allbinary/game/ag/layer/pickup/FallingPickupLayer" unless const_defined?(:FallingPickupLayer, false)

end; end; end; end; end; end

