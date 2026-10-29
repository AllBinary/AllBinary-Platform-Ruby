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
# package org.allbinary.game.ag.layer.weapon.mine

require "org/allbinary/layer/AllBinaryLayerFactoryInterface"

class MineLayerFactory
    include AllBinaryLayerFactoryInterface
    attr_accessor :viewPositionFactoryInterface

    def initialize_fields
        @viewPositionFactoryInterface = nil
    end
    

    def initialize(viewPositionFactoryInterface)
        initialize_fields
        @viewPositionFactoryInterface = viewPositionFactoryInterface
    end
    

    # throws Exception
    def getInstance()
        return MineLayer.new(@viewPositionFactoryInterface.getInstance())
    end
end

require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/view/ViewPositionFactoryInterface"
require "org/allbinary/game/ag/layer/weapon/mine/MineLayer"

