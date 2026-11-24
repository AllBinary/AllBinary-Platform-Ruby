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

class AbCrypt
    include ::Org::Allbinary::Init::Crypt::Jcehelper::CryptInterface
    attr_accessor :tsUtil, :secretComposite, :algorithm

    def jfields_org_allbinary_logic_system_security_crypt_jcehelper_AbCrypt
        @tsUtil = ::Org::Allbinary::TsUtil.getInstance()
        @secretComposite = BaseSecretComposite::NULL_SECRET_COMPOSITE
        @algorithm = nil unless instance_variable_defined?(:@algorithm)
    end
    

    def initialize(algorithm)
        jfields_org_allbinary_logic_system_security_crypt_jcehelper_AbCrypt
        @algorithm = algorithm
    end
    

    def init(keyAsString)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        begin
            begin
                Security.addProvider(::Org::Bouncycastle::Jce::Provider::BouncyCastleProvider.new())
            rescue StandardError => e
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(commonStrings.EXCEPTION, self, commonStrings.INIT, e)
            end
            key = @tsUtil.getByteArray(keyAsString)
            keySpec = KeySpecFactory.getInstance().getInstance(@algorithm, key)
            keyFactory = SecretKeyFactory.getInstance(@algorithm)
            secretKey = keyFactory.generateSecret(keySpec)
            cipher = Cipher.getInstance(@algorithm)
            @secretComposite = SecretComposite.new(secretKey, cipher, key)
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("init Failed", self, commonStrings.INIT, e)
        end
    end
    java_overload :init, 1
    

    def encrypt(array)
        begin
            return @secretComposite.encrypt(array)
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("Encrypt Failed", self, "encrypt", e)
            return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_BYTE_ARRAY
        end
    end
    java_overload :encrypt, 1
    

    def decrypt(array)
        begin
            return @secretComposite.decrypt(array)
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("decrypt Failed", self, "decrypt", e)
            return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_BYTE_ARRAY
        end
    end
    java_overload :decrypt, 1
end

module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Bouncycastle; module Jce; module Provider; autoload :BouncyCastleProvider, "org/bouncycastle/jce/provider/BouncyCastleProvider" unless const_defined?(:BouncyCastleProvider, false); end; end; end; end
autoload :BaseSecretComposite, "org/allbinary/logic/system/security/crypt/jcehelper/BaseSecretComposite" unless const_defined?(:BaseSecretComposite, false)
autoload :KeySpecFactory, "org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory" unless const_defined?(:KeySpecFactory, false)
autoload :SecretComposite, "org/allbinary/logic/system/security/crypt/jcehelper/SecretComposite" unless const_defined?(:SecretComposite, false)

end; end; end; end; end; end; end

