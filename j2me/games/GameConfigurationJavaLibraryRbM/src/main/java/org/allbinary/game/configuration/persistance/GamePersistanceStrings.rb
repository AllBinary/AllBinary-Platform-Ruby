# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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


class GamePersistanceStrings
    attr_accessor :SAVED_GAME_RECORD_ID, :SAVED_GAME_CONFIGURATION_RECORD_ID, :DEFAULT_INPUT_MAPPING_RECORD_ID, :SAVED_INPUT_CONFIGURATION_RECORD_ID

    def initialize_fields
        @SAVED_GAME_RECORD_ID = "_SG"
        @SAVED_GAME_CONFIGURATION_RECORD_ID = "_SGC"
        @DEFAULT_INPUT_MAPPING_RECORD_ID = "_DIM"
        @SAVED_INPUT_CONFIGURATION_RECORD_ID = "_SIC"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GamePersistanceStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class GamePersistanceStrings
    @@instance = GamePersistanceStrings.new()
end

