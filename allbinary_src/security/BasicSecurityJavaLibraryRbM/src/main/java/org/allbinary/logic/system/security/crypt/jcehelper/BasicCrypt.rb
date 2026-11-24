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
require "org/allbinary/init/crypt/jcehelper/CryptInterface"

module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt; module Jcehelper

class BasicCrypt
    include ::Org::Allbinary::Init::Crypt::Jcehelper::CryptInterface
    attr_accessor :byteUtil, :key

    def jfields_org_allbinary_logic_system_security_crypt_jcehelper_BasicCrypt
        @byteUtil = ::Org::Allbinary::Logic::Java::Byteutil::ByteUtil.getInstance()
        @key = nil unless instance_variable_defined?(:@key)
    end
    

    def initialize(keyAsString)
        jfields_org_allbinary_logic_system_security_crypt_jcehelper_BasicCrypt
        key = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_BYTE_ARRAY
        begin
            key = ::Org::Allbinary::TsUtil.getInstance().getByteArray(keyAsString)
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(commonStrings.EXCEPTION, self, "AbCrypt(alg,key)", e)
        end
        @key = key
    end
    

    def encrypt(array)
        begin
            return self.mutilate(array)
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("Encrypt Failed", self, "encrypt", e)
            return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_BYTE_ARRAY
        end
    end
    java_overload :encrypt, 1
    

    def decrypt(array)
        begin
            return self.mutilate(array)
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("decrypt Failed", self, "decrypt", e)
            return ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_BYTE_ARRAY
        end
    end
    java_overload :decrypt, 1
    

    def mutilate(array)
        value = 0
        (0...@key.length).each do |index|
            value = @key[index]
            array = @byteUtil.xor(array, value)
        end
        return array
    end
    java_overload :mutilate, 1
end

module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module Byteutil; autoload :ByteUtil, "org/allbinary/logic/java/byteutil/ByteUtil" unless const_defined?(:ByteUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end; end; end

