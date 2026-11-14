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
        BasicCryptUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BasicCryptUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BasicCryptUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicCryptUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :ByteArrayInputStream, "java/io/ByteArrayInputStream"
autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream"
autoload :InputStream, "java/io/InputStream"
autoload :TsUtil, "org/allbinary/TsUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CryptInterface, "org/allbinary/init/crypt/jcehelper/CryptInterface"

begin
    BasicCryptUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

