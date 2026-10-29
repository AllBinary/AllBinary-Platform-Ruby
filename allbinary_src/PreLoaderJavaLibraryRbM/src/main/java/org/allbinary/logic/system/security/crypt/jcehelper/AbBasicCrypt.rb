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

# require "java/security/Provider"
# require "java/security/Security"
# require "java/security/spec/KeySpec"
# require "javax/crypto/Cipher"
# require "javax/crypto/SecretKey"
# require "javax/crypto/SecretKeyFactory"
require "org/allbinary/init/crypt/jcehelper/CryptInterface"

class AbBasicCrypt
    include CryptInterface
    attr_accessor :cipher, :secretKey, :algorithm, :key

    def initialize_fields
        @cipher = nil
        @secretKey = nil
        @algorithm = nil
        @key = nil
    end
    

    def initialize(algorithm, key)
        initialize_fields
        begin
            @algorithm = algorithm
            @key = key.getBytes()
            self.init()
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.EXCEPTION, self, "AbCrypt(alg,key)", e)
        end
    end
    

    def init()
        begin
            sunJce = SunJCE.new()
            Security.addProvider(sunJce)
            keySpec = KeySpecFactory.getInstance().getInstance(@algorithm, @key)
            keyFactory = SecretKeyFactory.getInstance(@algorithm)
            @secretKey = keyFactory.generateSecret(keySpec)
            @cipher = Cipher.getInstance(@algorithm)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE("init Failed", self, commonStrings.INIT, e)
        end
    end
    

    def encrypt(array)
        begin
            @cipher.init(Cipher::ENCRYPT_MODE, @secretKey)
            ivArray = @secretKey.getEncoded()
            encrypted = @cipher.doFinal(array)
            result = Array.new(ivArray.length + encrypted.length, 0)
            PreLogUtil.put("ivArray Length: " + (ivArray.length).to_s, self, "encrypt")
            (0...ivArray.length).each do |index|
                result[index] = ivArray[index]
            end
            (0...encrypted.length).each do |index|
                result[index + ivArray.length] = encrypted[index]
            end
            return result
        rescue StandardError => e
            PreLogUtil.putOE("Encrypt Failed", self, "encrypt", e)
            return nil
        end
    end
    

    def decrypt(array)
        begin
            @cipher.init(Cipher::DECRYPT_MODE, @secretKey)
            ivArray = Array.new(8, 0)
            (0...8).each do |index|
                ivArray[index] = array[index]
            end
            PreLogUtil.put("ivArray Length: " + (ivArray.length).to_s, self, "encrypt")
            result = Array.new(array.length - ivArray.length, 0)
            (ivArray.length...array.length).each do |index|
                result[index - ivArray.length] = array[index]
            end
            decrypted = @cipher.doFinal(result)
            return result
        rescue StandardError => e
            PreLogUtil.putOE("decrypt Failed", self, "decrypt", e)
            return nil
        end
    end
end

require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory"

