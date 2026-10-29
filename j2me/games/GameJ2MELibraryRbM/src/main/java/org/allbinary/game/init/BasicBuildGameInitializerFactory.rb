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
# package org.allbinary.game.init

require "org/allbinary/game/init/GameInitializationInterfaceFactoryInterface"

class BasicBuildGameInitializerFactory
    include GameInitializationInterfaceFactoryInterface
    

    def getInstance()
        return BaseGameInitialization::NULL_BASE_GAME_INITIALIZATION
    end
end

require "org/allbinary/game/init/BaseGameInitialization"
require "org/allbinary/game/init/GameInitializationInterface"

class BasicBuildGameInitializerFactory
    NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = BasicBuildGameInitializerFactory.new()
end

