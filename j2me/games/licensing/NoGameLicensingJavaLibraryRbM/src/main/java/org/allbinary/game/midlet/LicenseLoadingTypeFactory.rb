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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/midlet/LicenseLoadingType"

class LicenseLoadingTypeFactory
    @@instance = LicenseLoadingTypeFactory.new()
end

