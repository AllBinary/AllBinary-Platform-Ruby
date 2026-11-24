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

require "java/lang/JavaOverload"
# require "java/security/Security"
# require "java/security/spec/KeySpec"
# require "javax/crypto/Cipher"
# require "javax/crypto/SecretKey"
# require "javax/crypto/SecretKeyFactory"
require "org/allbinary/init/crypt/jcehelper/CryptInterface"

module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt; module Jcehelper

class AbBasicCrypt
    include ::Org::Allbinary::Init::Crypt::Jcehelper::CryptInterface
    attr_accessor :cipher, :secretKey, :algorithm, :key

    def jfields_org_allbinary_logic_system_security_crypt_jcehelper_AbBasicCrypt
        @cipher = nil unless instance_variable_defined?(:@cipher)
        @secretKey = nil unless instance_variable_defined?(:@secretKey)
        @algorithm = nil unless instance_variable_defined?(:@algorithm)
        @key = nil unless instance_variable_defined?(:@key)
    end
    

    def initialize(algorithm, key)
        jfields_org_allbinary_logic_system_security_crypt_jcehelper_AbBasicCrypt
        begin
            @algorithm = algorithm
            @key = key.getBytes()
            self.init()
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(commonStrings.EXCEPTION, self, "AbCrypt(alg,key)", e)
        end
    end
    

    def init()
        begin
            sunJce = ::Com::Sun::Crypto::Provider::SunJCE.new()
            Security.addProvider(sunJce)
            keySpec = KeySpecFactory.getInstance().getInstance(@algorithm, @key)
            keyFactory = SecretKeyFactory.getInstance(@algorithm)
            @secretKey = keyFactory.generateSecret(keySpec)
            @cipher = Cipher.getInstance(@algorithm)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("init Failed", self, commonStrings.INIT, e)
        end
    end
    java_overload :init, 0
    

    def encrypt(array)
        begin
            @cipher.init(Cipher::ENCRYPT_MODE, @secretKey)
            ivArray = @secretKey.getEncoded()
            encrypted = @cipher.doFinal(array)
            result = (Array.new(ivArray.length + encrypted.length, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) }
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("ivArray Length: " + (ivArray.length).to_s, self, "encrypt")
            (0...ivArray.length).each do |index|
                result[index] = ivArray[index]
            end
            (0...encrypted.length).each do |index|
                result[index + ivArray.length] = encrypted[index]
            end
            return result
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("Encrypt Failed", self, "encrypt", e)
            return nil
        end
    end
    java_overload :encrypt, 1
    

    def decrypt(array)
        begin
            @cipher.init(Cipher::DECRYPT_MODE, @secretKey)
            ivArray = (Array.new(8, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) }
            (0...8).each do |index|
                ivArray[index] = array[index]
            end
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("ivArray Length: " + (ivArray.length).to_s, self, "encrypt")
            result = (Array.new(array.length - ivArray.length, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) }
            (ivArray.length...array.length).each do |index|
                result[index - ivArray.length] = array[index]
            end
            decrypted = @cipher.doFinal(result)
            return result
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("decrypt Failed", self, "decrypt", e)
            return nil
        end
    end
    java_overload :decrypt, 1
end

module ::Java; module Security; autoload :Provider, "java/security/Provider" unless const_defined?(:Provider, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Com; module Sun; module Crypto; module Provider; autoload :SunJCE, "com/sun/crypto/provider/SunJCE" unless const_defined?(:SunJCE, false); end; end; end; end
autoload :KeySpecFactory, "org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory" unless const_defined?(:KeySpecFactory, false)

end; end; end; end; end; end; end

