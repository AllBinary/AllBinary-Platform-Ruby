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

require "java/lang/JavaOverload"
# require "javax/crypto/Cipher"
# require "javax/crypto/SecretKey"
require "org/allbinary/logic/system/security/crypt/jcehelper/BaseSecretComposite"

module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt; module Jcehelper

class SecretComposite < BaseSecretComposite
    attr_accessor :byteUtil, :cipher, :secretKey, :key

    def jfields_org_allbinary_logic_system_security_crypt_jcehelper_SecretComposite
        @byteUtil = ::Org::Allbinary::Logic::Java::Byteutil::ByteUtil.getInstance()
        @cipher = nil unless instance_variable_defined?(:@cipher)
        @secretKey = nil unless instance_variable_defined?(:@secretKey)
        @key = nil unless instance_variable_defined?(:@key)
    end
    

    def initialize(secretKey, cipher, key)
        super()
        jfields_org_allbinary_logic_system_security_crypt_jcehelper_SecretComposite
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
    java_overload :encrypt, 1
    

    # throws Exception
    def decrypt(array)
        @cipher.init(Cipher::DECRYPT_MODE, @secretKey)
        return self.mutilate(@cipher.doFinal(array))
    end
    java_overload :decrypt, 1
    

    def mutilate(array)
        (0...@key.length).each do |index|
            value = @key[index]
            if value < 8 && value > 0
                array = @byteUtil.xorByte(array, value)
            end
        end
        return array
    end
    java_overload :mutilate, 1
end

module ::Org; module Allbinary; module Logic; module Java; module Byteutil; autoload :ByteUtil, "org/allbinary/logic/java/byteutil/ByteUtil" unless const_defined?(:ByteUtil, false); end; end; end; end; end

end; end; end; end; end; end; end

