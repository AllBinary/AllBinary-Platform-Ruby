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
        InputFeatureFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        InputFeatureFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = InputFeatureFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InputFeatureFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :InputFeature, "org/allbinary/game/configuration/feature/InputFeature"

begin
    InputFeatureFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

