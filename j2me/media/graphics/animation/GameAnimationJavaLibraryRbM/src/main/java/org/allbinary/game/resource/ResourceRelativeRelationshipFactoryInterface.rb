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

require "org/allbinary/game/configuration/feature/GameFeatureControlledInterface"

module ResourceRelativeRelationshipFactoryInterface
    include GameFeatureControlledInterface
    

    # throws Exception
    def getResourceRelativeRelationshipList(resource)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def addResourceRelativeRelationship(resource, relativeRelationship)
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :RelativeRelationship, "org/allbinary/graphics/RelativeRelationship"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"

