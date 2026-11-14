# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.configuration.feature


class MultiPlayerGameFeatureFactory
    

    def self.getInstance()
        return MultiPlayerGameFeatureFactory.instance
    end
    

    def initialize()
    end
    

    def addCommands(anyType)
    end

    def self.instance()
        MultiPlayerGameFeatureFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        MultiPlayerGameFeatureFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = MultiPlayerGameFeatureFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MultiPlayerGameFeatureFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    MultiPlayerGameFeatureFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

