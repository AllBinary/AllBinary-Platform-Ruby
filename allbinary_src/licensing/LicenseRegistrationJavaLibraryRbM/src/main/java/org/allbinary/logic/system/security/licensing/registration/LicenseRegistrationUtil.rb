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
# package org.allbinary.logic.system.security.licensing.registration

require "java/lang/Object"

module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; module Registration

class LicenseRegistrationUtil
    

    def initialize()
    end
    

    def self.process(abeClientInformation, registrationId)
        java_monitor.synchronize do
        begin
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put((::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL).to_s + "License Registration", "LicenseRegistrationUtil", commonStrings.PROCESS)
            registrationConfiguration = RegistrationConfiguration.getInstance()
            registrationConfiguration.setRegistrationCode(registrationId)
            registrationConfiguration.write()
            hashtable = abeClientInformation.toHashtable()
            hashtable.put(RegistrationConfiguration.getInstance().NAME, registrationId)
            hashtable.put("message", ::Org::Allbinary::Canvas::SpecialMessageUtil.getInstance().get())
            XmlRpcRemoteLicenseRegistrationClient.new(abeClientInformation).get(hashtable)
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("License Registration Exception", "LicenseRegistrationUtil", "License Registration", e)
        end
        end
    end
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Canvas; autoload :SpecialMessageUtil, "org/allbinary/canvas/SpecialMessageUtil" unless const_defined?(:SpecialMessageUtil, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :RegistrationConfiguration, "org/allbinary/logic/system/security/licensing/registration/RegistrationConfiguration" unless const_defined?(:RegistrationConfiguration, false)
autoload :XmlRpcRemoteLicenseRegistrationClient, "org/allbinary/logic/system/security/licensing/registration/XmlRpcRemoteLicenseRegistrationClient" unless const_defined?(:XmlRpcRemoteLicenseRegistrationClient, false)

end; end; end; end; end; end; end

