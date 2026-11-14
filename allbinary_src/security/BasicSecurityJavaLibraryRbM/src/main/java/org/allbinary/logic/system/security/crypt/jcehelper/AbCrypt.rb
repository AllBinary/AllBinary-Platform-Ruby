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

# require "java/security/Security"
# require "java/security/spec/KeySpec"
# require "javax/crypto/Cipher"
# require "javax/crypto/SecretKey"
# require "javax/crypto/SecretKeyFactory"
require "org/allbinary/init/crypt/jcehelper/CryptInterface"

class AbCrypt
    include CryptInterface
    attr_accessor :tsUtil, :secretComposite, :algorithm

    def initialize_fields
        @tsUtil = TsUtil.getInstance()
        @secretComposite = BaseSecretComposite::NULL_SECRET_COMPOSITE
        @algorithm = nil
    end
    

    def initialize(algorithm)
        initialize_fields
        @algorithm = algorithm
    end
    

    def init(keyAsString)
        commonStrings = CommonStrings.getInstance()
        begin
            begin
                Security.addProvider(BouncyCastleProvider.new())
            rescue StandardError => e
                PreLogUtil.putOE(commonStrings.EXCEPTION, self, commonStrings.INIT, e)
            end
            key = @tsUtil.getByteArray(keyAsString)
            keySpec = KeySpecFactory.getInstance().getInstance(@algorithm, key)
            keyFactory = SecretKeyFactory.getInstance(@algorithm)
            secretKey = keyFactory.generateSecret(keySpec)
            cipher = Cipher.getInstance(@algorithm)
            @secretComposite = SecretComposite.new(secretKey, cipher, key)
        rescue StandardError => e
            PreLogUtil.putOE("init Failed", self, commonStrings.INIT, e)
        end
    end
    

    def encrypt(array)
        begin
            return @secretComposite.encrypt(array)
        rescue StandardError => e
            PreLogUtil.putOE("Encrypt Failed", self, "encrypt", e)
            return NullUtil.getInstance().NULL_BYTE_ARRAY
        end
    end
    

    def decrypt(array)
        begin
            return @secretComposite.decrypt(array)
        rescue StandardError => e
            PreLogUtil.putOE("decrypt Failed", self, "decrypt", e)
            return NullUtil.getInstance().NULL_BYTE_ARRAY
        end
    end
end

autoload :TsUtil, "org/allbinary/TsUtil"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BouncyCastleProvider, "org/bouncycastle/jce/provider/BouncyCastleProvider"
autoload :BaseSecretComposite, "org/allbinary/logic/system/security/crypt/jcehelper/BaseSecretComposite"
autoload :KeySpecFactory, "org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory"
autoload :SecretComposite, "org/allbinary/logic/system/security/crypt/jcehelper/SecretComposite"

