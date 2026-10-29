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
# package org.allbinary.animation.resource

require "org/allbinary/game/configuration/feature/GameFeatureControlledInterface"
require "org/allbinary/game/resource/RectangleResourceFactoryInterface"
require "org/allbinary/animation/resource/ResourceAnimationInterfaceFactoryInterface"

module FeatureResourceAnimationInterfaceFactoryInterface
    include ResourceAnimationInterfaceFactoryInterface
    include RectangleResourceFactoryInterface
    include GameFeatureControlledInterface
    

    def getHashtable()
        raise NotImplementedError
    end
end

require "org/allbinary/util/ABHashtable"

