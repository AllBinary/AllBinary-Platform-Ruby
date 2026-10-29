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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/configuration/feature/Feature"

class MainFeatureFactory
    @@instance = MainFeatureFactory.new()
end

