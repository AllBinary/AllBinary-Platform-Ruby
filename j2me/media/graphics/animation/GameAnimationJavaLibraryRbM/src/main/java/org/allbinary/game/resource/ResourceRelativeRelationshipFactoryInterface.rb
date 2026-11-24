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
# package org.allbinary.game.resource

require "java/lang/JavaOverload"
require "org/allbinary/game/configuration/feature/GameFeatureControlledInterface"

module ::Org; module Allbinary; module Game; module Resource

module ResourceRelativeRelationshipFactoryInterface
    include ::Org::Allbinary::Game::Configuration::Feature::GameFeatureControlledInterface
    

    # throws Exception
    def getResourceRelativeRelationshipList(resource)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getResourceRelativeRelationshipList, 1
    

    # throws Exception
    def addResourceRelativeRelationship(resource, relativeRelationship)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :addResourceRelativeRelationship, 2
end

module ::Org; module Allbinary; module Graphics; autoload :RelativeRelationship, "org/allbinary/graphics/RelativeRelationship" unless const_defined?(:RelativeRelationship, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end

