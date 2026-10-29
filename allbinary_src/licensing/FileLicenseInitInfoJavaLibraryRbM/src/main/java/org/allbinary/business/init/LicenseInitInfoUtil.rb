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

class LicenseInitInfoUtil
    attr_accessor :logUtil, :stringUtil, :INITFILENAME, :ABOUT, :PRIVACY_POLICY, :filePath

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @stringUtil = StringUtil.getInstance()
        @INITFILENAME = "licenseinitdata.dat"
        @ABOUT = "about"
        @PRIVACY_POLICY = "privacy_policy"
        @filePath = @stringUtil.EMPTY_STRING
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return LicenseInitInfoUtil.instance
    end
    

    def setFilePath(filePath)
        java_monitor.synchronize do
        @filePath = filePath
        end
    end
    

    # throws Exception
    def write(initData)
        java_monitor.synchronize do
        if @filePath == @stringUtil.EMPTY_STRING
            @filePath = URLGLOBALS.getMainPath() + PATH_GLOBALS.getInstance().INIT_PATH
        end
        begin
            tsUtil = TsUtil.getInstance()
            dataOutputStream = DataOutputStreamFactory.getInstance().getInstance(@filePath, @INITFILENAME)
            licenseIdCrypted = tsUtil.getByteArray(WeakCrypt.new(1).encrypt(initData.getLicenseId()))
            dataOutputStream.writeUTF(DatabaseEncoder.encode(licenseIdCrypted))
            numberOfLicenseServers = initData.getNumberOfServers()
            dataOutputStream.writeInt(numberOfLicenseServers)
            licenseServerCrypted = nil
            (0...numberOfLicenseServers).each do |index|
                licenseServerCrypted = tsUtil.getByteArray(WeakCrypt.new(3).encrypt(initData.getServer(index)))
                dataOutputStream.writeUTF(DatabaseEncoder.encode(licenseServerCrypted))
            end
        rescue StandardError => e
            @logUtil.put("Command Failed: " + @INITFILENAME, self, "write", e)
            FileStreamFactory.getInstance().delete(@filePath, @INITFILENAME)
            raise e
        end
        end
    end
    

    # throws Exception
    def read()
        java_monitor.synchronize do
        return self.readAgain(0)
        end
    end
    

    # throws Exception
    def readAgain(initializeCounter)
        java_monitor.synchronize do
        _METHOD_NAME = "readAgain"
        if @filePath == @stringUtil.EMPTY_STRING
            @filePath = URLGLOBALS.getMainPath() + PATH_GLOBALS.getInstance().INIT_PATH
        end
        begin
            @logUtil.putF("LicenseInitInfo File: " + @INITFILENAME, self, _METHOD_NAME)
            fileStreamFactory = FileStreamFactory.getInstance()
            iFile = fileStreamFactory.getFileInputStreamInstance(@filePath, @INITFILENAME)
            if iFile != nil
                iData = AbDataInputStream.new(iFile)
                initInfo = LicenseInitInfo.new()
                decodedByteArray = DatabaseEncoder.decode(iData.readUTF())
                licenseIdDecoded = decodedByteArray.pack("c*").force_encoding("UTF-8")
                initInfo.setLicenseId(WeakCrypt.new(1).decrypt(licenseIdDecoded))
                numberOfLicenseServers = iData.readInt()
                _NEXT_FILE = StringMaker.new().append(CommonLabels.getInstance().NEXT).append(" License Server From File: ").to_s
                licenseServerDecoded = nil
                (0...numberOfLicenseServers).each do |index|
                    decodedByteArray = DatabaseEncoder.decode(iData.readUTF())
                    licenseServerDecoded = decodedByteArray.pack("c*").force_encoding("UTF-8")
                    initInfo.setServer(WeakCrypt.new(3).decrypt(licenseServerDecoded), index)
                    @logUtil.putF(_NEXT_FILE + (initInfo.getServer(index)).to_s, self, _METHOD_NAME)
                end
                return initInfo
            else
                raise StandardError.new("Could Not Load License InitInfo: " + @INITFILENAME)
            end
        rescue StandardError => e
            begin
                @logUtil.put("Command Failed: " + @INITFILENAME, self, _METHOD_NAME, e)
            rescue StandardError => e2
                @logUtil.put("LicenseInitInfo Read Retry: " + @INITFILENAME, self, "readAgain()", e2)
            end
            raise StandardError.new("LicenseInitInfo Read Error: " + @INITFILENAME)
        end
        end
    end
    

    def getFilePath()
        return @filePath
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/globals/PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/AbDataInputStream"
require "org/allbinary/logic/io/AbDataOutputStream"
require "org/allbinary/logic/io/AbFileInputStream"
require "org/allbinary/logic/io/DataOutputStreamFactory"
require "org/allbinary/logic/io/FileStreamFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/security/crypt/DatabaseEncoder"
require "org/allbinary/logic/system/security/crypt/WeakCrypt"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/business/init/LicenseInitInfo"

class LicenseInitInfoUtil
    @@instance = LicenseInitInfoUtil.new()
end

