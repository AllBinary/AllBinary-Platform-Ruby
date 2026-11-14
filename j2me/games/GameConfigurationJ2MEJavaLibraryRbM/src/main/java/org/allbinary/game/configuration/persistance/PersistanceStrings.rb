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
        PersistanceStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PersistanceStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PersistanceStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PersistanceStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    PersistanceStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

