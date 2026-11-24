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
# package org.allbinary.logic.system.security.licensing

require "java/lang/Object"
# require "java/io/File"
# require "java/io/FileReader"
# require "java/io/LineNumberReader"

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing

class LicenseClientAndServerTest
    attr_accessor :logUtil, :vector

    def jfields_org_allbinary_logic_system_security_licensing_LicenseClientAndServerTest
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @vector = BasicArrayListD.new()
    end
    

    def initialize(options)
        jfields_org_allbinary_logic_system_security_licensing_LicenseClientAndServerTest
        ::Org::Allbinary::Business::Init::LicenseInitInfoUtil.getInstance().setFilePath(PrintLicenseInitInfo::PATH + ::Org::Allbinary::Globals::PATH_GLOBALS.getInstance().INIT_PATH)
        (1...options.length).each do |index|
            @vector.add(options[index])
        end
        if options.length < 2
            file = File.new((PrintLicenseInitInfo::PATH).to_s + "testlicenseservers.txt")
            reader = FileReader.new(file)
            lineNumberReader = LineNumberReader.new(reader)
            while lineNumberReader.ready()
                @vector.add(lineNumberReader.readLine())
            end
        end
    end
    

    def test()
        java_monitor.synchronize do
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        begin
            list = BasicArrayListD.new()
            _TESTING = "Testing with new licence:<br/>"
            _PROCESSING = "Processing: <br/>"
            _END_ = "<br/>End<br/>"
            _RESULT = "Test Result: "
            size = @vector.size()
            (0...size).each do |index|
                stringBuffer.append(_TESTING)
                serverName = @vector.get(index)
                begin
                    licenseInitInfo = ::Org::Allbinary::Business::Init::LicenseInitInfo.new()
                    licenseInitInfo.addServer(serverName)
                    ::Org::Allbinary::Business::Init::LicenseInitInfoUtil.getInstance().write(licenseInitInfo)
                    abeClientInformation = AbeClientInformationInterfaceFactory.getInstance()
                    xmlRpcAbeLicenseClient = ::Org::Allbinary::Logic::System::Security::Licensing::Client::XmlRpcAbeLicenseRetrievalClient.new(abeClientInformation)
                    abeLicenseInterface = xmlRpcAbeLicenseClient.get(nil)
                    if abeLicenseInterface != nil
                        stringBuffer.append(_PROCESSING)
                        stringBuffer.append(abeLicenseInterface.to_s)
                    end
                    stringBuffer.append(_END_)
                    @logUtil.putF(_RESULT + stringBuffer.to_s, self, "test")
                    stringBuffer.delete(0, stringBuffer.length())
                rescue StandardError => e
                    list.add(serverName)
                    @logUtil.put("Test Error: " + stringBuffer.to_s, self, "test", e)
                end
            end
            @logUtil.putF("Total Servers Failed: " + (list.size()).to_s + " Failed Servers: " + list.to_s, self, "test")
        rescue StandardError => e
            @logUtil.put("Test Error: " + stringBuffer.to_s, self, "test", e)
        end
        end
    end
    

    def self.main(args)
        begin
            licensingTest = LicenseClientAndServerTest.new(args)
            licensingTest.test()
        rescue StandardError => e
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            logUtil.put(::Org::Allbinary::StringPackage::CommonStrings.getInstance().EXCEPTION, "main()", "main()", e)
        end
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; autoload :LicenseInitInfo, "org/allbinary/business/init/LicenseInitInfo" unless const_defined?(:LicenseInitInfo, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; autoload :LicenseInitInfoUtil, "org/allbinary/business/init/LicenseInitInfoUtil" unless const_defined?(:LicenseInitInfoUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; module Client; autoload :XmlRpcAbeLicenseRetrievalClient, "org/allbinary/logic/system/security/licensing/client/XmlRpcAbeLicenseRetrievalClient" unless const_defined?(:XmlRpcAbeLicenseRetrievalClient, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :PATH_GLOBALS, "org/allbinary/globals/PATH_GLOBALS" unless const_defined?(:PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false)
autoload :AbeLicenseInterface, "org/allbinary/logic/system/security/licensing/AbeLicenseInterface" unless const_defined?(:AbeLicenseInterface, false)
autoload :PrintLicenseInitInfo, "org/allbinary/logic/system/security/licensing/PrintLicenseInitInfo" unless const_defined?(:PrintLicenseInitInfo, false)

end; end; end; end; end; end

