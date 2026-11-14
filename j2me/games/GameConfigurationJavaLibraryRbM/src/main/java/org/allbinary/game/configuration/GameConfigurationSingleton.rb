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
# package org.allbinary.game.configuration


class GameConfigurationSingleton
    attr_accessor :list, :hashtable

    def initialize_fields
        @list = nil
        @hashtable = nil
    end
    

    def self.getInstance()
        return GameConfigurationSingleton::SINGLETON
    end
    

    def initialize()
        initialize_fields
        @list = BasicArrayListD.new()
        @hashtable = StdUtil.getInstance().createHashtable()
    end
    

    def getInstanceByName(name)
        return @hashtable.get(name)
    end
    

    def getOptionsBasicArrayList()
        return @list
    end
    

    def add(gameConfiguration)
        @list.add(gameConfiguration)
    end
    

    def getHashtable()
        return @hashtable
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, GameConfigurationSingleton.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameConfigurationSingleton"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :GameConfiguration, "org/allbinary/game/configuration/GameConfiguration"

begin
    GameConfigurationSingleton.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

