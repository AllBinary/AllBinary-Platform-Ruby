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
# package org.allbinary.init.crypt.jcehelper

# require "java/io/ByteArrayInputStream"
# require "java/io/ByteArrayOutputStream"
# require "java/io/InputStream"

class BasicCryptUtil
    attr_accessor :logUtil, :tsUtil, :XML_START

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tsUtil = TsUtil.getInstance()
        @XML_START = "<?xml"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return BasicCryptUtil.instance
    end
    

    # throws Exception
    def getDecryptedInputStream(inputStream, cryptInterface)
        buffer = ByteArrayOutputStream.new()
        ch = 0
        while true
            ch = inputStream.read()
            if ch == -1
                break
            end
            buffer.write(ch)
        end
        decrypted = cryptInterface.decrypt(buffer.toByteArray())
        decryptedString = decrypted.pack("c*").force_encoding("UTF-8")
        index = (decryptedString.index(@XML_START) || -1)
        if index > 0
            decryptedString = decryptedString[index..]
        end
        return ByteArrayInputStream.new(@tsUtil.getByteArray(decryptedString))
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/init/crypt/jcehelper/CryptInterface"

class BasicCryptUtil
    @@instance = BasicCryptUtil.new()
end

