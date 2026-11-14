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
        LicenseInitInfoUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LicenseInitInfoUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LicenseInitInfoUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LicenseInitInfoUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :TsUtil, "org/allbinary/TsUtil"
autoload :PATH_GLOBALS, "org/allbinary/globals/PATH_GLOBALS"
autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AbDataInputStream, "org/allbinary/logic/io/AbDataInputStream"
autoload :AbDataOutputStream, "org/allbinary/logic/io/AbDataOutputStream"
autoload :AbFileInputStream, "org/allbinary/logic/io/AbFileInputStream"
autoload :DataOutputStreamFactory, "org/allbinary/logic/io/DataOutputStreamFactory"
autoload :FileStreamFactory, "org/allbinary/logic/io/FileStreamFactory"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :DatabaseEncoder, "org/allbinary/logic/system/security/crypt/DatabaseEncoder"
autoload :WeakCrypt, "org/allbinary/logic/system/security/crypt/WeakCrypt"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :LicenseInitInfo, "org/allbinary/business/init/LicenseInitInfo"

begin
    LicenseInitInfoUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

