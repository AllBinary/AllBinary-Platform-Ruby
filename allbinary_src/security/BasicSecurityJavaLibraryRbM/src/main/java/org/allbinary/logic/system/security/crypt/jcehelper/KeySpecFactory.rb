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
# package org.allbinary.logic.system.security.crypt.jcehelper

# require "java/security/spec/KeySpec"
# require "javax/crypto/spec/DESKeySpec"
# require "javax/crypto/spec/DESedeKeySpec"

class KeySpecFactory
    attr_accessor :DES, :DESEDE, :BLOWFISH

    def initialize_fields
        @DES = "DES"
        @DESEDE = "DESede"
        @BLOWFISH = "Blowfish"
    end
    

    def self.getInstance()
        return KeySpecFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(algorithm, keyData)
        begin
            tsUtil = TsUtil.getInstance()
            if tsUtil.compareTo(algorithm, @DES) == 0
                return DESKeySpec.new(keyData)
            elsif tsUtil.compareTo(algorithm, @DESEDE) == 0
                return DESedeKeySpec.new(keyData)
            else
                raise RuntimeError.new()
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
            raise RuntimeError.new()
        end
    end

    def self.instance()
        KeySpecFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        KeySpecFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = KeySpecFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "KeySpecFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :TsUtil, "org/allbinary/TsUtil"
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    KeySpecFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

