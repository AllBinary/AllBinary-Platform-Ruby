# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.layer.unit

require "java/lang/JavaOverload"
require "org/allbinary/game/input/GameInputProcessor"

module ::Org; module Allbinary; module Game; module Layer; module Unit

class UnitGameInputProcessor < ::Org::Allbinary::Game::Input::GameInputProcessor
    attr_accessor :unitLayer

    def jfields_org_allbinary_game_layer_unit_UnitGameInputProcessor
        @unitLayer = nil unless instance_variable_defined?(:@unitLayer)
    end
    

    def initialize(unitLayer)
        super()
        jfields_org_allbinary_game_layer_unit_UnitGameInputProcessor
        @unitLayer = unitLayer
    end
end

autoload :UnitLayer, "org/allbinary/game/layer/unit/UnitLayer" unless const_defined?(:UnitLayer, false)

end; end; end; end; end

