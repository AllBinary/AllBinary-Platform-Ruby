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


class InputFeatureFactory
    attr_accessor :REMOVE_DUPLICATE_KEY_PRESSES, :INPUT_MAPPING, :MULTI_KEY_PRESS, :SINGLE_KEY_REPEAT_PRESS, :SINGLE_KEY_PRESS

    def initialize_fields
        @REMOVE_DUPLICATE_KEY_PRESSES = InputFeature.new("Remove Duplicate Key Presses")
        @INPUT_MAPPING = InputFeature.new("Input Mapping")
        @MULTI_KEY_PRESS = InputFeature.new("Multi Key Press")
        @SINGLE_KEY_REPEAT_PRESS = InputFeature.new("Single Key Repeat Press")
        @SINGLE_KEY_PRESS = InputFeature.new("Single Key Press")
    end
    

    def self.getInstance()
        return InputFeatureFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def isSingleKeyProcessing()
        features = Features.getInstance()
        if features.isFeature(@SINGLE_KEY_REPEAT_PRESS) || features.isFeature(@SINGLE_KEY_PRESS)
            return true
        else
            return false
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/InputFeature"

class InputFeatureFactory
    @@instance = InputFeatureFactory.new()
end

