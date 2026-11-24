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

require "java/lang/JavaOverload"
require "org/allbinary/layer/AllBinaryLayerFactoryInterface"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Weapon; module Mine

class MineLayerFactory
    include ::Org::Allbinary::Layer::AllBinaryLayerFactoryInterface
    attr_accessor :viewPositionFactoryInterface

    def jfields_org_allbinary_game_ag_layer_weapon_mine_MineLayerFactory
        @viewPositionFactoryInterface = nil unless instance_variable_defined?(:@viewPositionFactoryInterface)
    end
    

    def initialize(viewPositionFactoryInterface)
        jfields_org_allbinary_game_ag_layer_weapon_mine_MineLayerFactory
        @viewPositionFactoryInterface = viewPositionFactoryInterface
    end
    

    # throws Exception
    def getInstance()
        return MineLayer.new(@viewPositionFactoryInterface.getInstance())
    end
    java_overload :getInstance, 0
end

module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionFactoryInterface, "org/allbinary/view/ViewPositionFactoryInterface" unless const_defined?(:ViewPositionFactoryInterface, false); end; end; end
autoload :MineLayer, "org/allbinary/game/ag/layer/weapon/mine/MineLayer" unless const_defined?(:MineLayer, false)

end; end; end; end; end; end; end

