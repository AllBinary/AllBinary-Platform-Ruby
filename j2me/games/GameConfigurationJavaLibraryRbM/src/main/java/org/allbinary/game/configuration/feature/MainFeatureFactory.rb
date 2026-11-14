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
# package org.allbinary.game.configuration.feature


class MainFeatureFactory
    attr_accessor :FULL_SCREEN, :TITLE_BAR, :STATIC, :LOAD_ONDEMAND, :LOAD_ALL

    def initialize_fields
        @FULL_SCREEN = Feature.new("Full Screen")
        @TITLE_BAR = Feature.new("Title Bar")
        @STATIC = Feature.new("Static Dependent Feature")
        @LOAD_ONDEMAND = Feature.new("Load OnDemand")
        @LOAD_ALL = Feature.new("Load All")
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return MainFeatureFactory.instance
    end

    def self.instance()
        MainFeatureFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        MainFeatureFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = MainFeatureFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MainFeatureFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Feature, "org/allbinary/game/configuration/feature/Feature"

begin
    MainFeatureFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

