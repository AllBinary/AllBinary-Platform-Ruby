# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

# require "javax/crypto/Cipher"
# require "javax/crypto/SecretKey"
require "org/allbinary/logic/system/security/crypt/jcehelper/BaseSecretComposite"

class SecretComposite < BaseSecretComposite
    attr_accessor :byteUtil, :cipher, :secretKey, :key

    def initialize_fields
        @byteUtil = ByteUtil.getInstance()
        @cipher = nil
        @secretKey = nil
        @key = nil
    end
    

    def initialize(secretKey, cipher, key)
        super()
        initialize_fields
        @secretKey = secretKey
        @cipher = cipher
        @key = key
    end
    

    # throws Exception
    def encrypt(array)
        array = self.mutilate(array)
        @cipher.init(Cipher::ENCRYPT_MODE, @secretKey)
        return @cipher.doFinal(array)
    end
    

    # throws Exception
    def decrypt(array)
        @cipher.init(Cipher::DECRYPT_MODE, @secretKey)
        return self.mutilate(@cipher.doFinal(array))
    end
    

    def mutilate(array)
        (0...@key.length).each do |index|
            value = @key[index]
            if value < 8 && value > 0
                array = @byteUtil.xorByte(array, value)
            end
        end
        return array
    end
end

require "org/allbinary/logic/java/byteutil/ByteUtil"

