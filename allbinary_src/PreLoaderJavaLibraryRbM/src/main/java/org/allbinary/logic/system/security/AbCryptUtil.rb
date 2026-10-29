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
# package org.allbinary.logic.system.security

# require "java/io/ByteArrayOutputStream"
# require "java/io/InputStream"

class AbCryptUtil
    attr_accessor :streamUtil

    def initialize_fields
        @streamUtil = StreamUtil.getInstance()
    end
    

    def self.getInstance()
        return AbCryptUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def decrypt(inputStream, key)
        outputStream = nil
        begin
            outputStream = @streamUtil.get(inputStream, ByteArrayOutputStream.new(), Array.new(16384, 0))
            abCrypt = AbCrypt.new(KeySpecFactory.getInstance().DESEDE)
            abCrypt.init(key)
            return abCrypt.decrypt(outputStream.toByteArray())
        ensure
            @streamUtil.close(outputStream)
            @streamUtil.close(inputStream)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/system/security/crypt/jcehelper/AbCrypt"
require "org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory"

class AbCryptUtil
    @@instance = AbCryptUtil.new()
end

