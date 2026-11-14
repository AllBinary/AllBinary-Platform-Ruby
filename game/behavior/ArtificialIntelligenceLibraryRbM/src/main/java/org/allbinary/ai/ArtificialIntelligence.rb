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
# package org.allbinary.ai

require "org/allbinary/ai/ArtificialIntelligenceInterface"

class ArtificialIntelligence
    include ArtificialIntelligenceInterface
    

    def self.getInstance()
        return ArtificialIntelligence.instance
    end
    

    def initialize()
    end
    

    # throws Exception
    def processAI(layerManager)
    end
    

    def getId()
        return 1
    end

    def self.instance()
        ArtificialIntelligence.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ArtificialIntelligence.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:AI_ID, 2)
        begin
            @@instance = ArtificialIntelligence.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ArtificialIntelligence"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:AI_ID].include?(name)
        end
        super
    end
end

autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"

begin
    ArtificialIntelligence.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

