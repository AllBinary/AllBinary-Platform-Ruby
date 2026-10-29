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

class LicenseRegistrationUtil
    

    def initialize()
    end
    

    def self.process(abeClientInformation, registrationId)
        java_monitor.synchronize do
        begin
            commonStrings = CommonStrings.getInstance()
            PreLogUtil.put((CommonLabels.getInstance().START_LABEL).to_s + "License Registration", "LicenseRegistrationUtil", commonStrings.PROCESS)
            registrationConfiguration = RegistrationConfiguration.getInstance()
            registrationConfiguration.setRegistrationCode(registrationId)
            registrationConfiguration.write()
            hashtable = abeClientInformation.toHashtable()
            hashtable.put(RegistrationConfiguration.getInstance().NAME, registrationId)
            hashtable.put("message", SpecialMessageUtil.getInstance().get())
            XmlRpcRemoteLicenseRegistrationClient.new(abeClientInformation).get(hashtable)
        rescue StandardError => e
            PreLogUtil.putOE("License Registration Exception", "LicenseRegistrationUtil", "License Registration", e)
        end
        end
    end
end

require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/canvas/SpecialMessageUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/logic/system/security/licensing/registration/RegistrationConfiguration"
require "org/allbinary/logic/system/security/licensing/registration/XmlRpcRemoteLicenseRegistrationClient"

