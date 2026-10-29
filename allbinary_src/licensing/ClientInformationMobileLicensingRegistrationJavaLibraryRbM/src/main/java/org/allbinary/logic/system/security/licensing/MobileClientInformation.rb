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

require "org/allbinary/logic/system/security/licensing/AbeClientInformation"

class MobileClientInformation < AbeClientInformation
    

    def initialize(name, version, specialName, shortName)
        super(name, version, StringMaker.new().append(specialName).append(CommonSeps.getInstance().SPACE).append(PartnerIdentifierFileUtil.getInstance().get()).to_s, shortName)
        string = self.getSpecialName()
        number = string[string.length - 1..]
        if Integer.getInteger(number) == nil
            self.setHardSale(false)
        end
        commonStrings = CommonStrings.getInstance()
        if self.isHardSale()
            @logUtil.putF("Use Hard Coded Selling", self, commonStrings.CONSTRUCTOR)
        else
            @logUtil.putF("Don't Use Hard Coded Selling", self, commonStrings.CONSTRUCTOR)
        end
    end
    

    def toHashtable()
        hashtable = super()
        registrationConfiguration = RegistrationConfiguration.getInstance()
        hashtable.put(registrationConfiguration.NAME, registrationConfiguration.getRegistrationCode())
        return hashtable
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/registration/RegistrationConfiguration"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/logic/system/security/licensing/PartnerIdentifierFileUtil"

class MobileClientInformation
    DESC = "Mobile"
    ANDROID_DESC = "Android" + (MobileClientInformation::DESC).to_s
end

