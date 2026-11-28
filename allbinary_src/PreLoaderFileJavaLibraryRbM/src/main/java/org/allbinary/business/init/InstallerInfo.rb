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
# package org.allbinary.business.init

require "java/lang/Object"

module ::Org; module Allbinary; module Business; module Init

class InstallerInfo
    attr_accessor :logUtil

    def jfields_org_allbinary_business_init_InstallerInfo
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_business_init_InstallerInfo
    end
    

    # throws Exception
    def write()
        java_monitor.synchronize do
        _FILEABPATH = ::Org::Allbinary::Logic::Io::Path::AbPath.new(::Org::Allbinary::Globals::URLGLOBALS.getMainPath() + PACKAGE, INITFILENAME)
        begin
            newFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(_FILEABPATH)
            newFile.createNewFile()
            dataOutputStream = ::Org::Allbinary::Logic::Io::DataOutputStreamFactory.getInstance().getInstanceForAbFile(newFile)
            cryptedUserName = ::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(1).encrypt(self.getUserName()).getBytes()
            cryptedPassword = ::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(2).encrypt(self.getPassword()).getBytes()
            dataOutputStream.writeUTF(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.encode(cryptedUserName))
            dataOutputStream.writeUTF(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.encode(cryptedPassword))
            @@hasRead = false
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADERERROR)
                @logUtil.putF("Failed", self, "write")
            end
            raise e
        end
        end
    end
    

    # throws Exception
    def read()
        java_monitor.synchronize do
        _FILEABPATH = ::Org::Allbinary::Logic::Io::Path::AbPath.new(::Org::Allbinary::Globals::URLGLOBALS.getMainPath() + PACKAGE, INITFILENAME)
        begin
            file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(_FILEABPATH)
            if file.isFile()
                iFile = ::Org::Allbinary::Logic::Io::AbFileLocalInputStream.new(file)
                iData = ::Org::Allbinary::Logic::Io::AbDataInputStream.new(iFile)
                decryptedUserName = String.new(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.decode(iData.readUTF()))
                decryptedPassword = String.new(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.decode(iData.readUTF()))
                self.setUserName(::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(1).decrypt(decryptedUserName))
                self.setPassword(::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(2).decrypt(decryptedPassword))
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADER)
                    @logUtil.putF("Not a File - Failed Loading: " + _FILEABPATH.to_s, self, "read")
                end
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADERERROR)
                @logUtil.putF("Failed", self, "read")
            end
        end
        end
    end
    

    def self.setHasRead(value)
        java_monitor.synchronize do
        @@hasRead = value
        end
    end
    

    def setUserName(userName)
        @@userName = userName
    end
    

    def setPassword(password)
        @@password = password
    end
    

    # throws Exception
    def updateIfNeeded()
        java_monitor.synchronize do
        if !@@hasRead
            @@hasRead = true
            self.read()
            if @@userName == nil || @@password == nil
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADER)
                    @logUtil.putF("Failed", self, "updateIfNeeded")
                end
            end
        end
        end
    end
    

    # throws Exception
    def getUserName()
        self.updateIfNeeded()
        return @@userName
    end
    

    # throws Exception
    def getPassword()
        self.updateIfNeeded()
        return @@password
    end
    

    # throws Exception
    def isValid(userName, password)
        self.updateIfNeeded()
        if @@userName != nil && (@@userName <=> userName) == 0 && @@password != nil && (@@password <=> password) == 0
            return true
        end
        return false
    end

    def self.instance()
        InstallerInfo.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        InstallerInfo.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.userName()
        InstallerInfo.java_static_fields unless @java_static_fields_started
        return defined?(@@userName) ? @@userName : nil
    end

    def self.userName=(value)
        InstallerInfo.java_static_fields unless @java_static_fields_started
        @@userName = value
    end

    def self.password()
        InstallerInfo.java_static_fields unless @java_static_fields_started
        return defined?(@@password) ? @@password : nil
    end

    def self.password=(value)
        InstallerInfo.java_static_fields unless @java_static_fields_started
        @@password = value
    end

    def self.hasRead()
        InstallerInfo.java_static_fields unless @java_static_fields_started
        return defined?(@@hasRead) ? @@hasRead : nil
    end

    def self.hasRead=(value)
        InstallerInfo.java_static_fields unless @java_static_fields_started
        @@hasRead = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:INITFILENAME, "installerdata.dat")
        @@hasRead = false
        begin
            @@instance = InstallerInfo.new()
            const_set(:PACKAGE, ::Org::Allbinary::Globals::PATH_GLOBALS.getInstance().INIT_PATH)
            @@userName = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
            @@password = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InstallerInfo"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:INITFILENAME, :PACKAGE].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Globals; autoload :PATH_GLOBALS, "org/allbinary/globals/PATH_GLOBALS" unless const_defined?(:PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbDataInputStream, "org/allbinary/logic/io/AbDataInputStream" unless const_defined?(:AbDataInputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbDataOutputStream, "org/allbinary/logic/io/AbDataOutputStream" unless const_defined?(:AbDataOutputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbFileLocalInputStream, "org/allbinary/logic/io/AbFileLocalInputStream" unless const_defined?(:AbFileLocalInputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :DataOutputStreamFactory, "org/allbinary/logic/io/DataOutputStreamFactory" unless const_defined?(:DataOutputStreamFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt; autoload :DatabaseEncoder, "org/allbinary/logic/system/security/crypt/DatabaseEncoder" unless const_defined?(:DatabaseEncoder, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt; autoload :WeakCrypt, "org/allbinary/logic/system/security/crypt/WeakCrypt" unless const_defined?(:WeakCrypt, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    InstallerInfo.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

