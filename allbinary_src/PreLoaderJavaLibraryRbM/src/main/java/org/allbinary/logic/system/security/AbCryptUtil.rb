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


module ::Org; module Allbinary; module Logic; module System; module Security

class AbCryptUtil
    attr_accessor :streamUtil

    def jfields_org_allbinary_logic_system_security_AbCryptUtil
        @streamUtil = ::Org::Allbinary::Logic::Io::StreamUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_security_AbCryptUtil
    end
    

    # throws Exception
    def decrypt(inputStream, key)
        outputStream = nil
        begin
            outputStream = @streamUtil.get(inputStream, ::Java::Io::ByteArrayOutputStream.new(), (Array.new(16384, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) })
            abCrypt = ::Org::Allbinary::Logic::System::Security::Crypt::Jcehelper::AbCrypt.new(::Org::Allbinary::Logic::System::Security::Crypt::Jcehelper::KeySpecFactory.getInstance().DESEDE)
            abCrypt.init(key)
            return abCrypt.decrypt(outputStream.toByteArray())
        ensure
            @streamUtil.close(outputStream)
            @streamUtil.close(inputStream)
        end
    end

    def self.instance()
        AbCryptUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AbCryptUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AbCryptUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbCryptUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream" unless const_defined?(:ByteArrayOutputStream, false); end; end
module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt; module Jcehelper; autoload :AbCrypt, "org/allbinary/logic/system/security/crypt/jcehelper/AbCrypt" unless const_defined?(:AbCrypt, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt; module Jcehelper; autoload :KeySpecFactory, "org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory" unless const_defined?(:KeySpecFactory, false); end; end; end; end; end; end; end

begin
    AbCryptUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

