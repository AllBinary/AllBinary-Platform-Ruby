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
# package org.allbinary.game.midlet


class LicenseLoadingTypeFactory
    attr_accessor :INITIAL_LOADING, :GAME_START, :LOGIN, :OTHER

    def initialize_fields
        @INITIAL_LOADING = LicenseLoadingType.new("Initial Loading")
        @GAME_START = LicenseLoadingType.new("Game Start")
        @LOGIN = LicenseLoadingType.new("Login")
        @OTHER = LicenseLoadingType.new("Other/Usually The First Non Demo Level")
    end

    def initialize
        initialize_fields
    end
    

    def self.getIntance()
        return LicenseLoadingTypeFactory.instance
    end

    def self.instance()
        LicenseLoadingTypeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LicenseLoadingTypeFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LicenseLoadingTypeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LicenseLoadingTypeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LicenseLoadingType, "org/allbinary/game/midlet/LicenseLoadingType"

begin
    LicenseLoadingTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

