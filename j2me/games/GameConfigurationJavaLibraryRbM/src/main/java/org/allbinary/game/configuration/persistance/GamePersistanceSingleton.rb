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
# package org.allbinary.game.configuration.persistance

require "org/allbinary/game/configuration/persistance/KeyValuePersistance"

class GamePersistanceSingleton < KeyValuePersistance
    

    def self.getInstance()
        return GamePersistanceSingleton::GAME_PERSISTANCE
    end
    

    def initialize()
        super(GamePersistanceStrings.getInstance().SAVED_GAME_RECORD_ID)
    end
end

require "org/allbinary/game/configuration/persistance/GamePersistanceStrings"

class GamePersistanceSingleton
    GAME_PERSISTANCE = GamePersistanceSingleton.new()
end

