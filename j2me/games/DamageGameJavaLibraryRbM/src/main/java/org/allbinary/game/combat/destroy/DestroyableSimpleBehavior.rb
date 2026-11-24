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
# package org.allbinary.game.combat.destroy

require "java/lang/JavaOverload"
require "org/allbinary/game/combat/destroy/DestroyableBaseBehavior"

module ::Org; module Allbinary; module Game; module Combat; module Destroy

class DestroyableSimpleBehavior < DestroyableBaseBehavior
    attr_accessor :ownerLayer, :destroyed

    def jfields_org_allbinary_game_combat_destroy_DestroyableSimpleBehavior
        @ownerLayer = nil unless instance_variable_defined?(:@ownerLayer)
        @destroyed = false
    end
    

    def initialize(ownerLayer)
        super()
        jfields_org_allbinary_game_combat_destroy_DestroyableSimpleBehavior
        @ownerLayer = ownerLayer
    end
    

    def isDestroyed()
        return @destroyed
    end
    java_overload :isDestroyed, 0
    

    def setDestroyed(destroyed)
        @destroyed = destroyed
        if self.isDestroyed()
            DestroyedLayerProcessor.getInstance().add(@ownerLayer)
        end
    end
    java_overload :setDestroyed, 1
end

module ::Org; module Allbinary; module Game; module Layer; autoload :CollidableCompositeLayer, "org/allbinary/game/layer/CollidableCompositeLayer" unless const_defined?(:CollidableCompositeLayer, false); end; end; end; end
autoload :DestroyedLayerProcessor, "org/allbinary/game/combat/destroy/DestroyedLayerProcessor" unless const_defined?(:DestroyedLayerProcessor, false)

end; end; end; end; end

