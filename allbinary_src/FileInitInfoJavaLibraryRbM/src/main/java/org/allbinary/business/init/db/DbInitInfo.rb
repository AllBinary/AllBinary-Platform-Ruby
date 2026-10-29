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

require "org/allbinary/business/init/db/DbConnectionInfo"

class DbInitInfo < DbConnectionInfo
    attr_accessor :commonStrings, :directory, :httpData, :GET_URL, :PACKAGE, :initFileName, :hasRead

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @directory = Directory.getInstance()
        @httpData = HttpData.getInstance()
        @GET_URL = "getUrl"
        @PACKAGE = FREEBLISKET_PATH_GLOBALS.getInstance().DBINITPATH
        @initFileName = nil
        @hasRead = false
    end
    

    def initialize(initFileName, read)
        super()
        initialize_fields
        @initFileName = initFileName
        if read
            self.updateIfNeeded()
        else
            self.setHasRead(true)
        end
    end
    

    def getUrl()
        url = super()
        if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)
            PreLogUtil.put((@httpData.URL_LABEL).to_s + url, self, @GET_URL)
        end
        return url
    end
    

    # throws Exception
    def write()
        _PATH = AbPath.new((URLGLOBALS.getWebappPath()).to_s + @PACKAGE, StringUtil.getInstance().EMPTY_STRING)
        @directory.create(_PATH)
        _FILEABPATH = AbPath.new((URLGLOBALS.getWebappPath()).to_s + @PACKAGE, @initFileName)
        begin
            newFile = AbFile.createAbFileFromAbPath(_FILEABPATH)
            newFile.createNewFile()
            dataOutputStream = DataOutputStreamFactory.getInstance().getInstanceForAbFile(newFile)
            begin
                cryptedJdbcDriver = WeakCrypt.new(1).encrypt(self.getJdbcDriver()).getBytes()
                cryptedName = WeakCrypt.new(2).encrypt(self.getName()).getBytes()
                cryptedUserName = WeakCrypt.new(3).encrypt(self.getUserName()).getBytes()
                cryptedPassword = WeakCrypt.new(4).encrypt(self.getPassword()).getBytes()
                cryptedSchema = WeakCrypt.new(5).encrypt(self.getSchema()).getBytes()
                cryptedServer = WeakCrypt.new(6).encrypt(self.getServer()).getBytes()
                cryptedPort = WeakCrypt.new(7).encrypt(self.getPort()).getBytes()
                dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedJdbcDriver))
                dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedName))
                dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedUserName))
                dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedPassword))
                dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedSchema))
                dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedServer))
                dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedPort))
                @hasRead = false
            ensure
                StreamUtil.getInstance().close(dataOutputStream)
            end
        rescue StandardError => e
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)
                PreLogUtil.putOE("Failed Write: " + _FILEABPATH.to_s, self, "write", e)
            end
        end
    end
    

    # throws Exception
    def load()
        _FILEABPATH = AbPath.new((URLGLOBALS.getWebappPath()).to_s + @PACKAGE, @initFileName)
        begin
            file = AbFile.createAbFileFromAbPath(_FILEABPATH)
            if file.isFile()
                iFile = AbFileInputStream.new(file)
                iData = AbDataInputStream.new(iFile)
                begin
                    decryptedJdbcDriver = String.new(DatabaseEncoder.decode(iData.readUTF()))
                    decryptedName = String.new(DatabaseEncoder.decode(iData.readUTF()))
                    decryptedUserName = String.new(DatabaseEncoder.decode(iData.readUTF()))
                    decryptedPassword = String.new(DatabaseEncoder.decode(iData.readUTF()))
                    decryptedSchema = String.new(DatabaseEncoder.decode(iData.readUTF()))
                    decryptedServer = String.new(DatabaseEncoder.decode(iData.readUTF()))
                    decryptedPort = String.new(DatabaseEncoder.decode(iData.readUTF()))
                    self.setJdbcDriver(WeakCrypt.new(1).decrypt(decryptedJdbcDriver))
                    self.setName(WeakCrypt.new(2).decrypt(decryptedName))
                    self.setUserName(WeakCrypt.new(3).decrypt(decryptedUserName))
                    self.setPassword(WeakCrypt.new(4).decrypt(decryptedPassword))
                    self.setSchema(WeakCrypt.new(5).decrypt(decryptedSchema))
                    self.setServer(WeakCrypt.new(6).decrypt(decryptedServer))
                    self.setPort(WeakCrypt.new(7).decrypt(decryptedPort))
                    stringUtil = StringUtil.getInstance()
                ensure
                    StreamUtil.getInstance().close(iData)
                end
            else
                @hasRead = false
                if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)
                    PreLogUtil.put("Not a File - Failed Loading: " + _FILEABPATH.to_s, self, @commonStrings.LOAD)
                end
            end
        rescue StandardError => e
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)
                PreLogUtil.putOE("Failed Loading: " + _FILEABPATH.to_s, self, @commonStrings.LOAD, e)
            end
        end
    end
    

    def setHasRead(value)
        @hasRead = value
    end
    

    def updateIfNeeded()
        begin
            if !@hasRead
                @hasRead = true
                self.load()
            end
        rescue StandardError => e
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)
                PreLogUtil.putOE(@commonStrings.EXCEPTION, self, "updateIfNeeded", e)
            end
        end
    end
    

    def getName()
        self.updateIfNeeded()
        if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)
            PreLogUtil.put("Name: " + super(), self, "getName")
        end
        return super()
    end
    

    def getUserName()
        self.updateIfNeeded()
        if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)
            PreLogUtil.put("Name: " + (super()).to_s, self, "getUserName")
        end
        return super()
    end
    

    def getPassword()
        self.updateIfNeeded()
        return super()
    end
    

    def getSchema()
        self.updateIfNeeded()
        return super()
    end
    

    def getServer()
        self.updateIfNeeded()
        return super()
    end
    

    def getPort()
        self.updateIfNeeded()
        return super()
    end
end

require "org/allbinary/globals/FREEBLISKET_PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/http/HttpData"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypes"
require "org/allbinary/logic/io/AbDataInputStream"
require "org/allbinary/logic/io/AbDataOutputStream"
require "org/allbinary/logic/io/AbFileInputStream"
require "org/allbinary/logic/io/DataOutputStreamFactory"
require "org/allbinary/logic/io/StreamUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/directory/Directory"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/security/crypt/DatabaseEncoder"
require "org/allbinary/logic/system/security/crypt/WeakCrypt"
require "org/allbinary/string/CommonStrings"

