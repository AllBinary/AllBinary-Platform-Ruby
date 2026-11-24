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
# package org.allbinary.business.init.db

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/business/init/db/DbConnectionInfo"

module ::Org; module Allbinary; module Business; module Init; module Db

class DbInitInfo < DbConnectionInfo
    attr_accessor :commonStrings, :directory, :httpData, :GET_URL, :PACKAGE, :initFileName, :hasRead

    def jfields_org_allbinary_business_init_db_DbInitInfo
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @directory = ::Org::Allbinary::Logic::Io::FilePackage::Directory::Directory.getInstance()
        @httpData = ::Org::Allbinary::Logic::Communication::Http::HttpData.getInstance()
        @GET_URL = "getUrl"
        @PACKAGE = ::Org::Allbinary::Globals::FREEBLISKET_PATH_GLOBALS.getInstance().DBINITPATH
        @initFileName = nil unless instance_variable_defined?(:@initFileName)
        @hasRead = false
    end
    

    def initialize(initFileName, read)
        super()
        jfields_org_allbinary_business_init_db_DbInitInfo
        @initFileName = initFileName
        if read
            self.updateIfNeeded()
        else
            self.setHasRead(true)
        end
    end
    

    def getUrl()
        url = DbInitInfo.superclass.java_super_method(:getUrl, 0).bind(self).call()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADER)
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put((@httpData.URL_LABEL).to_s + url, self, @GET_URL)
        end
        return url
    end
    java_overload :getUrl, 0
    

    # throws Exception
    def write()
        _PATH = ::Org::Allbinary::Logic::Io::Path::AbPath.new((::Org::Allbinary::Globals::URLGLOBALS.getWebappPath()).to_s + @PACKAGE, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        @directory.create(_PATH)
        _FILEABPATH = ::Org::Allbinary::Logic::Io::Path::AbPath.new((::Org::Allbinary::Globals::URLGLOBALS.getWebappPath()).to_s + @PACKAGE, @initFileName)
        begin
            newFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(_FILEABPATH)
            newFile.createNewFile()
            dataOutputStream = ::Org::Allbinary::Logic::Io::DataOutputStreamFactory.getInstance().getInstanceForAbFile(newFile)
            begin
                cryptedJdbcDriver = ::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(1).encrypt(self.getJdbcDriver()).getBytes()
                cryptedName = ::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(2).encrypt(self.getName()).getBytes()
                cryptedUserName = ::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(3).encrypt(self.getUserName()).getBytes()
                cryptedPassword = ::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(4).encrypt(self.getPassword()).getBytes()
                cryptedSchema = ::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(5).encrypt(self.getSchema()).getBytes()
                cryptedServer = ::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(6).encrypt(self.getServer()).getBytes()
                cryptedPort = ::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(7).encrypt(self.getPort()).getBytes()
                dataOutputStream.writeUTF(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.encode(cryptedJdbcDriver))
                dataOutputStream.writeUTF(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.encode(cryptedName))
                dataOutputStream.writeUTF(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.encode(cryptedUserName))
                dataOutputStream.writeUTF(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.encode(cryptedPassword))
                dataOutputStream.writeUTF(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.encode(cryptedSchema))
                dataOutputStream.writeUTF(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.encode(cryptedServer))
                dataOutputStream.writeUTF(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.encode(cryptedPort))
                @hasRead = false
            ensure
                ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(dataOutputStream)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADERERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("Failed Write: " + _FILEABPATH.to_s, self, "write", e)
            end
        end
    end
    java_overload :write, 0
    

    # throws Exception
    def load()
        _FILEABPATH = ::Org::Allbinary::Logic::Io::Path::AbPath.new((::Org::Allbinary::Globals::URLGLOBALS.getWebappPath()).to_s + @PACKAGE, @initFileName)
        begin
            file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(_FILEABPATH)
            if file.isFile()
                iFile = ::Org::Allbinary::Logic::Io::AbFileInputStream.createFromAbFile(file)
                iData = ::Org::Allbinary::Logic::Io::AbDataInputStream.new(iFile)
                begin
                    decryptedJdbcDriver = String.new(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.decode(iData.readUTF()))
                    decryptedName = String.new(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.decode(iData.readUTF()))
                    decryptedUserName = String.new(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.decode(iData.readUTF()))
                    decryptedPassword = String.new(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.decode(iData.readUTF()))
                    decryptedSchema = String.new(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.decode(iData.readUTF()))
                    decryptedServer = String.new(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.decode(iData.readUTF()))
                    decryptedPort = String.new(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.decode(iData.readUTF()))
                    self.setJdbcDriver(::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(1).decrypt(decryptedJdbcDriver))
                    self.setName(::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(2).decrypt(decryptedName))
                    self.setUserName(::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(3).decrypt(decryptedUserName))
                    self.setPassword(::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(4).decrypt(decryptedPassword))
                    self.setSchema(::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(5).decrypt(decryptedSchema))
                    self.setServer(::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(6).decrypt(decryptedServer))
                    self.setPort(::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(7).decrypt(decryptedPort))
                    stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
                ensure
                    ::Org::Allbinary::Logic::Io::StreamUtil.getInstance().close(iData)
                end
            else
                @hasRead = false
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADER)
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Not a File - Failed Loading: " + _FILEABPATH.to_s, self, @commonStrings.LOAD)
                end
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADERERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("Failed Loading: " + _FILEABPATH.to_s, self, @commonStrings.LOAD, e)
            end
        end
    end
    java_overload :load, 0
    

    def setHasRead(value)
        @hasRead = value
    end
    java_overload :setHasRead, 1
    

    def updateIfNeeded()
        begin
            if !@hasRead
                @hasRead = true
                self.load()
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADERERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@commonStrings.EXCEPTION, self, "updateIfNeeded", e)
            end
        end
    end
    java_overload :updateIfNeeded, 0
    

    def getName()
        self.updateIfNeeded()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADER)
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Name: " + DbInitInfo.superclass.java_super_method(:getName, 0).bind(self).call(), self, "getName")
        end
        return DbInitInfo.superclass.java_super_method(:getName, 0).bind(self).call()
    end
    java_overload :getName, 0
    

    def getUserName()
        self.updateIfNeeded()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADER)
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put("Name: " + (DbInitInfo.superclass.java_super_method(:getUserName, 0).bind(self).call()).to_s, self, "getUserName")
        end
        return DbInitInfo.superclass.java_super_method(:getUserName, 0).bind(self).call()
    end
    java_overload :getUserName, 0
    

    def getPassword()
        self.updateIfNeeded()
        return DbInitInfo.superclass.java_super_method(:getPassword, 0).bind(self).call()
    end
    java_overload :getPassword, 0
    

    def getSchema()
        self.updateIfNeeded()
        return DbInitInfo.superclass.java_super_method(:getSchema, 0).bind(self).call()
    end
    java_overload :getSchema, 0
    

    def getServer()
        self.updateIfNeeded()
        return DbInitInfo.superclass.java_super_method(:getServer, 0).bind(self).call()
    end
    java_overload :getServer, 0
    

    def getPort()
        self.updateIfNeeded()
        return DbInitInfo.superclass.java_super_method(:getPort, 0).bind(self).call()
    end
    java_overload :getPort, 0
end

module ::Org; module Allbinary; module Globals; autoload :FREEBLISKET_PATH_GLOBALS, "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS" unless const_defined?(:FREEBLISKET_PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; autoload :HttpData, "org/allbinary/logic/communication/http/HttpData" unless const_defined?(:HttpData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbDataInputStream, "org/allbinary/logic/io/AbDataInputStream" unless const_defined?(:AbDataInputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbDataOutputStream, "org/allbinary/logic/io/AbDataOutputStream" unless const_defined?(:AbDataOutputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbFileInputStream, "org/allbinary/logic/io/AbFileInputStream" unless const_defined?(:AbFileInputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :DataOutputStreamFactory, "org/allbinary/logic/io/DataOutputStreamFactory" unless const_defined?(:DataOutputStreamFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :StreamUtil, "org/allbinary/logic/io/StreamUtil" unless const_defined?(:StreamUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :Directory, "org/allbinary/logic/io/file/directory/Directory" unless const_defined?(:Directory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt; autoload :DatabaseEncoder, "org/allbinary/logic/system/security/crypt/DatabaseEncoder" unless const_defined?(:DatabaseEncoder, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt; autoload :WeakCrypt, "org/allbinary/logic/system/security/crypt/WeakCrypt" unless const_defined?(:WeakCrypt, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end

