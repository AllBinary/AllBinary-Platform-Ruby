# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.bouncycastle.jce.provider

# require "java/security/Provider"

class BouncyCastleProvider < Provider
    

    def initialize()
        super(BouncyCastleProvider::PROVIDER_NAME, 1.41, BouncyCastleProvider.info)
    end
    

    def setParameter(parameterName, parameter)
    end

    def self.info()
        return defined?(@@info) ? @@info : nil
    end

    def self.info=(value)
        @@info = value
    end
end

class BouncyCastleProvider
    @@info = "BouncyCastle Security Provider v1.41"
    PROVIDER_NAME = "BC"
end

