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
# package org.allbinary.game.collision


module ::Org; module Allbinary; module Game; module Collision

class CollidableHelperFactory
    

    def self.getInstance()
        if ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance().isFeature(::Org::Allbinary::Game::Configuration::Feature::GameFeatureFactory.getInstance().COLLISIONS_WITH_SOURCE)
            return CollisionHelper.new(::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER)
        else
            return SourceCollisionHelper.new(::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER)
        end
    end
end

module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory" unless const_defined?(:GameFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :CollisionHelper, "org/allbinary/game/collision/CollisionHelper" unless const_defined?(:CollisionHelper, false)
autoload :SourceCollisionHelper, "org/allbinary/game/collision/SourceCollisionHelper" unless const_defined?(:SourceCollisionHelper, false)

end; end; end; end

