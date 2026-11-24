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

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; module Client

class AbeLicenseClient
    attr_accessor :logUtil, :commonStrings, :MINSERVERS

    def jfields_org_allbinary_logic_system_security_licensing_client_AbeLicenseClient
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @MINSERVERS = 3
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_security_licensing_client_AbeLicenseClient
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
            stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
            if stringValidationUtil.isEmpty(abeClientInformation.getLicenseId()) && !abeClientInformation.isSameId(licenseId)
                isNewLicenseId = true
            end
            if servers.size() >= @MINSERVERS && abeClientInformation.isLargerOrDifferentServerList(servers)
                isBetterServerList = true
            end
            if isBetterServerList || isNewLicenseId
                initInfo = ::Org::Allbinary::Business::Init::LicenseInitInfoUtil.getInstance().read()
                initInfo.setLicenseId(licenseId)
                initInfo.setServerList(servers)
                ::Org::Allbinary::Business::Init::LicenseInitInfoUtil.getInstance().write(initInfo)
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

module ::Org; module Allbinary; module Business; module Init; autoload :LicenseInitInfo, "org/allbinary/business/init/LicenseInitInfo" unless const_defined?(:LicenseInitInfo, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; autoload :LicenseInitInfoUtil, "org/allbinary/business/init/LicenseInitInfoUtil" unless const_defined?(:LicenseInitInfoUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Xmlrpc; autoload :XmlRpcAbeClient, "org/allbinary/logic/communication/xmlrpc/XmlRpcAbeClient" unless const_defined?(:XmlRpcAbeClient, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeLicenseInterface, "org/allbinary/logic/system/security/licensing/AbeLicenseInterface" unless const_defined?(:AbeLicenseInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :XmlRpcAbeLicenseRetrievalClient, "org/allbinary/logic/system/security/licensing/client/XmlRpcAbeLicenseRetrievalClient" unless const_defined?(:XmlRpcAbeLicenseRetrievalClient, false)

end; end; end; end; end; end; end

