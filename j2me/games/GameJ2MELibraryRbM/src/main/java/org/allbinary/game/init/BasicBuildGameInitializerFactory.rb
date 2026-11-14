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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, BasicBuildGameInitializerFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicBuildGameInitializerFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY].include?(name)
        end
        super
    end
end

autoload :BaseGameInitialization, "org/allbinary/game/init/BaseGameInitialization"
autoload :GameInitializationInterface, "org/allbinary/game/init/GameInitializationInterface"

begin
    BasicBuildGameInitializerFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

