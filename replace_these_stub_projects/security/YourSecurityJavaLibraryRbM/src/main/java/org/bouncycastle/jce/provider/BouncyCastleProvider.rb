# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.bouncycastle.jce.provider

require "java/security/Provider"

class BouncyCastleProvider < Provider
    

    def initialize()
        super(BouncyCastleProvider::PROVIDER_NAME, 1.41, BouncyCastleProvider.info)
    end
    

    def setParameter(parameterName, parameter)
    end

    def self.info()
        BouncyCastleProvider.java_static_fields unless @java_static_fields_started
        return defined?(@@info) ? @@info : nil
    end

    def self.info=(value)
        BouncyCastleProvider.java_static_fields unless @java_static_fields_started
        @@info = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@info = "BouncyCastle Security Provider v1.41"
        const_set(:PROVIDER_NAME, "BC")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BouncyCastleProvider"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:PROVIDER_NAME].include?(name)
        end
        super
    end
end

begin
    BouncyCastleProvider.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

