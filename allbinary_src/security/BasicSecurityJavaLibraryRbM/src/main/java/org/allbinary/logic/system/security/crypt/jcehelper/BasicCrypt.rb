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

require "org/allbinary/init/crypt/jcehelper/CryptInterface"

class BasicCrypt
    include CryptInterface
    attr_accessor :byteUtil, :key

    def initialize_fields
        @byteUtil = ByteUtil.getInstance()
        @key = nil
    end
    

    def initialize(keyAsString)
        initialize_fields
        key = NullUtil.getInstance().NULL_BYTE_ARRAY
        begin
            key = TsUtil.getInstance().getByteArray(keyAsString)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.EXCEPTION, self, "AbCrypt(alg,key)", e)
        end
        @key = key
    end
    

    def encrypt(array)
        begin
            return self.mutilate(array)
        rescue StandardError => e
            PreLogUtil.putOE("Encrypt Failed", self, "encrypt", e)
            return NullUtil.getInstance().NULL_BYTE_ARRAY
        end
    end
    

    def decrypt(array)
        begin
            return self.mutilate(array)
        rescue StandardError => e
            PreLogUtil.putOE("decrypt Failed", self, "decrypt", e)
            return NullUtil.getInstance().NULL_BYTE_ARRAY
        end
    end
    

    def mutilate(array)
        value = 0
        (0...@key.length).each do |index|
            value = @key[index]
            array = @byteUtil.xor(array, value)
        end
        return array
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/java/byteutil/ByteUtil"
require "org/allbinary/string/CommonStrings"

