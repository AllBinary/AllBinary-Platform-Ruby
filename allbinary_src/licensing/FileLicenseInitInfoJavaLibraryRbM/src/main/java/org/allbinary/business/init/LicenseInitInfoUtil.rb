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

class LicenseInitInfoUtil
    attr_accessor :logUtil, :stringUtil, :INITFILENAME, :ABOUT, :PRIVACY_POLICY, :filePath

    def jfields_org_allbinary_business_init_LicenseInitInfoUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @INITFILENAME = "licenseinitdata.dat"
        @ABOUT = "about"
        @PRIVACY_POLICY = "privacy_policy"
        @filePath = @stringUtil.EMPTY_STRING
    end

    def initialize
        jfields_org_allbinary_business_init_LicenseInitInfoUtil
    end
    

    def self.getInstance()
        return @@instance
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
            @filePath = ::Org::Allbinary::Globals::URLGLOBALS.getMainPath() + ::Org::Allbinary::Globals::PATH_GLOBALS.getInstance().INIT_PATH
        end
        begin
            tsUtil = ::Org::Allbinary::TsUtil.getInstance()
            dataOutputStream = ::Org::Allbinary::Logic::Io::DataOutputStreamFactory.getInstance().getInstance(@filePath, @INITFILENAME)
            licenseIdCrypted = tsUtil.getByteArray(::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(1).encrypt(initData.getLicenseId()))
            dataOutputStream.writeUTF(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.encode(licenseIdCrypted))
            numberOfLicenseServers = initData.getNumberOfServers()
            dataOutputStream.writeInt(numberOfLicenseServers)
            licenseServerCrypted = nil
            (0...numberOfLicenseServers).each do |index|
                licenseServerCrypted = tsUtil.getByteArray(::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(3).encrypt(initData.getServer(index)))
                dataOutputStream.writeUTF(::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.encode(licenseServerCrypted))
            end
        rescue StandardError => e
            @logUtil.put("Command Failed: " + @INITFILENAME, self, "write", e)
            ::Org::Allbinary::Logic::Io::FileStreamFactory.getInstance().delete(@filePath, @INITFILENAME)
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
            @filePath = ::Org::Allbinary::Globals::URLGLOBALS.getMainPath() + ::Org::Allbinary::Globals::PATH_GLOBALS.getInstance().INIT_PATH
        end
        begin
            @logUtil.putF("LicenseInitInfo File: " + @INITFILENAME, self, _METHOD_NAME)
            fileStreamFactory = ::Org::Allbinary::Logic::Io::FileStreamFactory.getInstance()
            iFile = fileStreamFactory.getFileInputStreamInstance(@filePath, @INITFILENAME)
            if iFile != nil
                iData = ::Org::Allbinary::Logic::Io::AbDataInputStream.new(iFile)
                initInfo = LicenseInitInfo.new()
                decodedByteArray = ::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.decode(iData.readUTF())
                licenseIdDecoded = decodedByteArray.pack("c*").force_encoding("UTF-8")
                initInfo.setLicenseId(::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(1).decrypt(licenseIdDecoded))
                numberOfLicenseServers = iData.readInt()
                _NEXT_FILE = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().NEXT).append(" License Server From File: ").to_s
                licenseServerDecoded = nil
                (0...numberOfLicenseServers).each do |index|
                    decodedByteArray = ::Org::Allbinary::Logic::System::Security::Crypt::DatabaseEncoder.decode(iData.readUTF())
                    licenseServerDecoded = decodedByteArray.pack("c*").force_encoding("UTF-8")
                    initInfo.setServer(::Org::Allbinary::Logic::System::Security::Crypt::WeakCrypt.new(3).decrypt(licenseServerDecoded), index)
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

module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Globals; autoload :PATH_GLOBALS, "org/allbinary/globals/PATH_GLOBALS" unless const_defined?(:PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbDataInputStream, "org/allbinary/logic/io/AbDataInputStream" unless const_defined?(:AbDataInputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbDataOutputStream, "org/allbinary/logic/io/AbDataOutputStream" unless const_defined?(:AbDataOutputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :AbFileInputStream, "org/allbinary/logic/io/AbFileInputStream" unless const_defined?(:AbFileInputStream, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :DataOutputStreamFactory, "org/allbinary/logic/io/DataOutputStreamFactory" unless const_defined?(:DataOutputStreamFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :FileStreamFactory, "org/allbinary/logic/io/FileStreamFactory" unless const_defined?(:FileStreamFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt; autoload :DatabaseEncoder, "org/allbinary/logic/system/security/crypt/DatabaseEncoder" unless const_defined?(:DatabaseEncoder, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Crypt; autoload :WeakCrypt, "org/allbinary/logic/system/security/crypt/WeakCrypt" unless const_defined?(:WeakCrypt, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
autoload :LicenseInitInfo, "org/allbinary/business/init/LicenseInitInfo" unless const_defined?(:LicenseInitInfo, false)

begin
    LicenseInitInfoUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

