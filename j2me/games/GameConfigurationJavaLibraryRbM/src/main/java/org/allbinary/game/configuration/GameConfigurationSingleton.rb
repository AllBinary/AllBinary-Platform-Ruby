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
end

require "org/allbinary/logic/StdUtil"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/configuration/GameConfiguration"

class GameConfigurationSingleton
    SINGLETON = GameConfigurationSingleton.new()
end

