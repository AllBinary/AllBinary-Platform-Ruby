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
# package org.allbinary.logic.system.security.licensing.registration


module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; module Registration

class RegistrationConfiguration
    attr_accessor :logUtil, :registrationCode, :NAME, :FILE

    def jfields_org_allbinary_logic_system_security_licensing_registration_RegistrationConfiguration
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @registrationCode = "No Registration Code"
        @NAME = "registrationid"
        @FILE = "Registration.dat"
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_security_licensing_registration_RegistrationConfiguration
        begin
            if ::Org::Allbinary::Logic::Io::FilePackage::FileFactory.getInstance().isFile(@FILE)
                self.read()
            else
                self.write()
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
    end
    

    def self.getInstance()
        return SINGLETON
    end
    

    # throws Exception
    def read()
        fileInputStreamFactory = ::Org::Allbinary::Logic::Io::FileStreamFactory.getInstance()
        fileInputStream = fileInputStreamFactory.getFileInputStreamInstance(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, @FILE)
        dataInputStream = ::Java::Io::DataInputStream.new(fileInputStream)
        self.setRegistrationCode(dataInputStream.readUTF())
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Read Configuration: ").append(self.to_s).to_s, self, "read")
    end
    

    # throws Exception
    def write()
        dataOutputStream = nil
        begin
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Write Configuration: ").append(self.to_s).to_s, self, "write")
            fileInputStreamFactory = ::Org::Allbinary::Logic::Io::FileStreamFactory.getInstance()
            fileOutputStream = fileInputStreamFactory.getFileOutputStreamInstance(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, @FILE)
            dataOutputStream = ::Org::Allbinary::Logic::Io::AbDataOutputStream.new(fileOutputStream)
            dataOutputStream.writeUTF(self.getRegistrationCode())
            dataOutputStream.flush()
        ensure
            ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(dataOutputStream)
        end
    end
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Registration Code: ").append(self.getRegistrationCode()).to_s
    end
    alias_method :to_s, :toString
    

    def setRegistrationCode(registrationCode)
        @registrationCode = registrationCode
    end
    

    def getRegistrationCode()
        return @registrationCode
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, RegistrationConfiguration.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RegistrationConfiguration"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :DataInputStream, "java/io/DataInputStream" unless const_defined?(:DataInputStream, false); end; end
module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Java; module Io; autoload :OutputStream, "java/io/OutputStream" unless const_defined?(:OutputStream, false); end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbDataOutputStream, "org/allbinary/logic/io/AbDataOutputStream" unless const_defined?(:AbDataOutputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :FileStreamFactory, "org/allbinary/logic/io/FileStreamFactory" unless const_defined?(:FileStreamFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileFactory, "org/allbinary/logic/io/file/FileFactory" unless const_defined?(:FileFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end

begin
    RegistrationConfiguration.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

