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

class InstallerInfo
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def write()
        java_monitor.synchronize do
        _FILEABPATH = AbPath.new(URLGLOBALS.getMainPath() + InstallerInfo::PACKAGE, InstallerInfo::INITFILENAME)
        begin
            newFile = AbFile.createAbFileFromAbPath(_FILEABPATH)
            newFile.createNewFile()
            dataOutputStream = DataOutputStreamFactory.getInstance().getInstanceForAbFile(newFile)
            cryptedUserName = WeakCrypt.new(1).encrypt(self.getUserName()).getBytes()
            cryptedPassword = WeakCrypt.new(2).encrypt(self.getPassword()).getBytes()
            dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedUserName))
            dataOutputStream.writeUTF(DatabaseEncoder.encode(cryptedPassword))
            InstallerInfo.hasRead = false
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRELOADERERROR)
                @logUtil.putF("Failed", self, "write")
            end
            raise e
        end
        end
    end
    

    # throws Exception
    def read()
        java_monitor.synchronize do
        _FILEABPATH = AbPath.new(URLGLOBALS.getMainPath() + InstallerInfo::PACKAGE, InstallerInfo::INITFILENAME)
        begin
            file = AbFile.createAbFileFromAbPath(_FILEABPATH)
            if file.isFile()
                iFile = AbFileLocalInputStream.new(file)
                iData = AbDataInputStream.new(iFile)
                decryptedUserName = String.new(DatabaseEncoder.decode(iData.readUTF()))
                decryptedPassword = String.new(DatabaseEncoder.decode(iData.readUTF()))
                self.setUserName(WeakCrypt.new(1).decrypt(decryptedUserName))
                self.setPassword(WeakCrypt.new(2).decrypt(decryptedPassword))
            else
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRELOADER)
                    @logUtil.putF("Not a File - Failed Loading: " + _FILEABPATH.to_s, self, "read")
                end
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRELOADERERROR)
                @logUtil.putF("Failed", self, "read")
            end
        end
        end
    end
    

    def self.setHasRead(value)
        java_monitor.synchronize do
        InstallerInfo.hasRead = value
        end
    end
    

    def setUserName(userName)
        InstallerInfo.userName = userName
    end
    

    def setPassword(password)
        InstallerInfo.password = password
    end
    

    # throws Exception
    def updateIfNeeded()
        java_monitor.synchronize do
        if !InstallerInfo.hasRead
            InstallerInfo.hasRead = true
            self.read()
            if InstallerInfo.userName == nil || InstallerInfo.password == nil
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRELOADER)
                    @logUtil.putF("Failed", self, "updateIfNeeded")
                end
            end
        end
        end
    end
    

    # throws Exception
    def getUserName()
        self.updateIfNeeded()
        return InstallerInfo.userName
    end
    

    # throws Exception
    def getPassword()
        self.updateIfNeeded()
        return InstallerInfo.password
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end

    def self.userName()
        return defined?(@@userName) ? @@userName : nil
    end

    def self.userName=(value)
        @@userName = value
    end

    def self.password()
        return defined?(@@password) ? @@password : nil
    end

    def self.password=(value)
        @@password = value
    end

    def self.hasRead()
        return defined?(@@hasRead) ? @@hasRead : nil
    end

    def self.hasRead=(value)
        @@hasRead = value
    end
end

require "org/allbinary/globals/PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/AbDataInputStream"
require "org/allbinary/logic/io/AbDataOutputStream"
require "org/allbinary/logic/io/AbFileLocalInputStream"
require "org/allbinary/logic/io/DataOutputStreamFactory"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/security/crypt/DatabaseEncoder"
require "org/allbinary/logic/system/security/crypt/WeakCrypt"

class InstallerInfo
    @@instance = InstallerInfo.new()
    INITFILENAME = "installerdata.dat"
    PACKAGE = PATH_GLOBALS.getInstance().INIT_PATH
    @@userName = StringUtil.getInstance().EMPTY_STRING
    @@password = StringUtil.getInstance().EMPTY_STRING
    @@hasRead = false
end

