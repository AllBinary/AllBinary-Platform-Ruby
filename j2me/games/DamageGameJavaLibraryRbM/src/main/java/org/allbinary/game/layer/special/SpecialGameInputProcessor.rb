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
# package org.allbinary.game.layer.special

require "java/lang/JavaOverload"
require "org/allbinary/game/input/GameInputProcessor"

module ::Org; module Allbinary; module Game; module Layer; module Special

class SpecialGameInputProcessor < ::Org::Allbinary::Game::Input::GameInputProcessor
    attr_accessor :collidableDestroyableDamageableLayer

    def jfields_org_allbinary_game_layer_special_SpecialGameInputProcessor
        @collidableDestroyableDamageableLayer = nil unless instance_variable_defined?(:@collidableDestroyableDamageableLayer)
    end
    

    def initialize(collidableDestroyableDamageableLayer)
        super()
        jfields_org_allbinary_game_layer_special_SpecialGameInputProcessor
        @collidableDestroyableDamageableLayer = collidableDestroyableDamageableLayer
    end
end

autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false)

end; end; end; end; end

