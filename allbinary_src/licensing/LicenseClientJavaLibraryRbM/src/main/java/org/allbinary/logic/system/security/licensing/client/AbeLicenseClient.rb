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
# package org.allbinary.logic.system.security.licensing.client

require "java/lang/Object"

class AbeLicenseClient
    attr_accessor :logUtil, :commonStrings, :MINSERVERS

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @MINSERVERS = 3
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def get(abeClientInformation)
        java_monitor.synchronize do
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.GET)
            xmlRpcAbeLicenseClient = XmlRpcAbeLicenseRetrievalClient.new(abeClientInformation)
            abeLicenseInterface = xmlRpcAbeLicenseClient.get(nil)
            licenseId = abeLicenseInterface.getLicenseId()
            servers = abeLicenseInterface.getServers()
            isNewLicenseId = false
            isBetterServerList = false
            stringValidationUtil = StringValidationUtil.getInstance()
            if stringValidationUtil.isEmpty(abeClientInformation.getLicenseId()) && !abeClientInformation.isSameId(licenseId)
                isNewLicenseId = true
            end
            if servers.size() >= @MINSERVERS && abeClientInformation.isLargerOrDifferentServerList(servers)
                isBetterServerList = true
            end
            if isBetterServerList || isNewLicenseId
                initInfo = LicenseInitInfoUtil.getInstance().read()
                initInfo.setLicenseId(licenseId)
                initInfo.setServerList(servers)
                LicenseInitInfoUtil.getInstance().write(initInfo)
                abeClientInformation.init()
            end
            @logUtil.putF(@commonStrings.END_, self, @commonStrings.GET)
            return abeLicenseInterface
        rescue StandardError => e
            raise e
        end
        end
    end
end

require "org/allbinary/business/init/LicenseInitInfo"
require "org/allbinary/business/init/LicenseInitInfoUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/xmlrpc/XmlRpcAbeClient"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/AbeLicenseInterface"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/logic/system/security/licensing/client/XmlRpcAbeLicenseRetrievalClient"

