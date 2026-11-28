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

module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt; module Jcehelper

class KeySpecFactory
    attr_accessor :DES, :DESEDE, :BLOWFISH

    def jfields_org_allbinary_logic_system_security_crypt_jcehelper_KeySpecFactory
        @DES = "DES"
        @DESEDE = "DESede"
        @BLOWFISH = "Blowfish"
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_security_crypt_jcehelper_KeySpecFactory
    end
    

    def getInstance(algorithm, keyData)
        begin
            tsUtil = ::Org::Allbinary::TsUtil.getInstance()
            if tsUtil.compareTo(algorithm, @DES) == 0
                return DESKeySpec.new(keyData)
            elsif tsUtil.compareTo(algorithm, @DESEDE) == 0
                return DESedeKeySpec.new(keyData)
            else
                raise RuntimeError.new()
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
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

module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    KeySpecFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

