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

class LicenseClientAndServerTest
    attr_accessor :logUtil, :vector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @vector = BasicArrayListD.new()
    end
    

    def initialize(options)
        initialize_fields
        LicenseInitInfoUtil.getInstance().setFilePath(PrintLicenseInitInfo::PATH + PATH_GLOBALS.getInstance().INIT_PATH)
        (1...options.length).each do |index|
            @vector.add(options[index])
        end
        if options.length < 2
            file = File.new((PrintLicenseInitInfo::PATH).to_s + "testlicenseservers.txt")
            reader = FileReader.new(file)
            lineNumberReader = LineNumberReader.new(reader)
            while true
                line = lineNumberReader.readLine()
                if line != nil
                    @vector.add(line)
                else
                    break
                end
            end
        end
    end
    

    def test()
        java_monitor.synchronize do
        stringBuffer = StringMaker.new()
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
                    licenseInitInfo = LicenseInitInfo.new()
                    licenseInitInfo.addServer(serverName)
                    LicenseInitInfoUtil.getInstance().write(licenseInitInfo)
                    abeClientInformation = AbeClientInformationInterfaceFactory.getInstance()
                    xmlRpcAbeLicenseClient = XmlRpcAbeLicenseRetrievalClient.new(abeClientInformation)
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
            logUtil = LogUtil.getInstance()
            @logUtil.put(@commonStrings.EXCEPTION, "main()", "main()", e)
        end
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/business/init/LicenseInitInfo"
require "org/allbinary/business/init/LicenseInitInfoUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/client/XmlRpcAbeLicenseRetrievalClient"
require "org/allbinary/globals/PATH_GLOBALS"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/AbeLicenseInterface"
require "org/allbinary/logic/system/security/licensing/PrintLicenseInitInfo"

