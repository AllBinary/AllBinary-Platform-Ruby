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

require "java/lang/JavaOverload"
require "org/allbinary/logic/system/security/licensing/ClientInformation"

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing

# This is the information sent to the license server
class AbeClientInformation < ClientInformation
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_system_security_licensing_AbeClientInformation
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(name, version, specialName, shortName)
        super(name, version, specialName, shortName)
        jfields_org_allbinary_logic_system_security_licensing_AbeClientInformation
    end
    

    def init()
        begin
            self.setOperatingSystemInterface(::Org::Allbinary::Logic::System::Os::OperatingSystemFactory.getInstance().getOperatingSystemInstance())
            licenseInitInfo = ::Org::Allbinary::Business::Init::LicenseInitInfoUtil.getInstance().read()
            self.setLicenseId(licenseInitInfo.getLicenseId())
            self.setLicenseServers(licenseInitInfo.getServerList())
            stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
            if stringValidationUtil.isEmpty(self.getLicenseId())
                _NONE = "No License Id"
                self.setLicenseId(_NONE)
            end
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Special Name: ").append(self.getSpecialName()).to_s, self, commonStrings.CONSTRUCTOR)
        rescue StandardError => e
            logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, self, commonStrings.CONSTRUCTOR, e)
        end
    end
    java_overload :init, 0
end

module ::Org; module Allbinary; module Business; module Init; autoload :LicenseInitInfo, "org/allbinary/business/init/LicenseInitInfo" unless const_defined?(:LicenseInitInfo, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; autoload :LicenseInitInfoUtil, "org/allbinary/business/init/LicenseInitInfoUtil" unless const_defined?(:LicenseInitInfoUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :OperatingSystemFactory, "org/allbinary/logic/system/os/OperatingSystemFactory" unless const_defined?(:OperatingSystemFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end; end

