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

require "java/lang/JavaClass"
# require "java/io/IOException"

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing

class AbeLicenseInterfaceFactory
    attr_accessor :logUtil, :commonStrings, :time, :check, :checkPeriod, :abeLicenseInterface

    def jfields_org_allbinary_logic_system_security_licensing_AbeLicenseInterfaceFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @time = 0
        @check = false
        @checkPeriod = 36000000
        @abeLicenseInterface = nil
    end
    

    def self.getInstance()
        return AbeLicenseInterfaceFactory::SINGLETON
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_security_licensing_AbeLicenseInterfaceFactory
    end
    

    # throws LicensingException
    def getLicenseInstance(abeClientInformation)
        if isTimeToGetKey()
            return self.get(abeClientInformation)
        else
            return @abeLicenseInterface
        end
    end
    

    # throws LicensingException
    def get(abeClientInformation)
        begin
            @logUtil.putF("Getting Keys", self, @commonStrings.GET)
            @abeLicenseInterface = AbeNoLicense.getInstance()
            licenseClient = ::Org::Allbinary::Logic::System::Security::Licensing::Client::AbeLicenseClient.new()
            @abeLicenseInterface = licenseClient.get(abeClientInformation)
            if @abeLicenseInterface != nil
                @logUtil.putF("Default Key: " + (@abeLicenseInterface.getKey(AbeClientInformationData.getInstance().KEY)).to_s, self, @commonStrings.GET)
            end
            return @abeLicenseInterface
        rescue IOError => e
            @logUtil.put("Licensing IO Error", self, @commonStrings.GET, e)
            raise LicensingException.new("License Server Connection Error")
        rescue StandardError => e
            @logUtil.put("Licensing Failure", self, @commonStrings.GET, e)
            raise LicensingException.new("Unknown License Failure: " + self.class.java_name)
        end
    end
    

    def isTimeToGetKey()
        calendar = ::Java::Util::Calendar.getInstance()
        currentTime = calendar.getTimeInMillis()
        if @abeLicenseInterface == nil || @abeLicenseInterface == AbeNoLicense.getInstance() || !@abeLicenseInterface.hasKey() || isCheck() || currentTime - @checkPeriod > @time
            @abeLicenseInterface = nil
            @time = currentTime
            return true
        else
            return false
        end
    end
    

    def setCheck(check)
        @check = check
    end
    

    def isCheck()
        return @check
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, AbeLicenseInterfaceFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbeLicenseInterfaceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; module Client; autoload :AbeLicenseClient, "org/allbinary/logic/system/security/licensing/client/AbeLicenseClient" unless const_defined?(:AbeLicenseClient, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AbeClientInformationData, "org/allbinary/logic/system/security/licensing/AbeClientInformationData" unless const_defined?(:AbeClientInformationData, false)
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false)
autoload :AbeLicenseInterface, "org/allbinary/logic/system/security/licensing/AbeLicenseInterface" unless const_defined?(:AbeLicenseInterface, false)
autoload :AbeNoLicense, "org/allbinary/logic/system/security/licensing/AbeNoLicense" unless const_defined?(:AbeNoLicense, false)
autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false)

begin
    AbeLicenseInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

