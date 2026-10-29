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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/string/CommonStrings"

class KeySpecFactory
    @@instance = KeySpecFactory.new()
end

