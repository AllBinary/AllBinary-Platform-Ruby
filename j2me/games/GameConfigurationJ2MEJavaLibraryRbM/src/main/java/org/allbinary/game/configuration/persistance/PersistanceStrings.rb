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


class PersistanceStrings
    attr_accessor :SAVING, :NUMBER_OF_RECORDS, :LOADING_ID, :LOAD_ALL, :DELETING_WITH_ID, :CLOSING_RECORDSTORE, :NOT_SAVING, :ERROR_LOADING, :ERROR_LOADING_ID, :ID, :GAME_ACTION_INPUT

    def initialize_fields
        @SAVING = "Saving: "
        @NUMBER_OF_RECORDS = "Number of records: "
        @LOADING_ID = "Loading data with id: "
        @LOAD_ALL = "loadAll"
        @DELETING_WITH_ID = "Deleting data with id: "
        @CLOSING_RECORDSTORE = "Closing RecordStore"
        @NOT_SAVING = "Not Saving: "
        @ERROR_LOADING = "Error Loading gameActionInput: "
        @ERROR_LOADING_ID = "Error Loading id: "
        @ID = " id: "
        @GAME_ACTION_INPUT = " GameActionInput: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return PersistanceStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class PersistanceStrings
    @@instance = PersistanceStrings.new()
end

