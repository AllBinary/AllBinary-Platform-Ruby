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

require "org/allbinary/layer/AllBinaryLayerFactoryInterface"

class FallingPickupLayerFactory
    include AllBinaryLayerFactoryInterface
    

    # throws Exception
    def getInstance()
        return FallingPickupLayer.new(RemoteInfo::REMOTE_INFO)
    end
end

autoload :RemoteInfo, "org/allbinary/game/multiplayer/layer/RemoteInfo"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :FallingPickupLayer, "org/allbinary/game/ag/layer/pickup/FallingPickupLayer"

